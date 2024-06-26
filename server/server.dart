import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:typing_hero/types.dart';
import 'package:typing_hero/types/closeroommessage.dart';
import 'package:typing_hero/types/enterroommessage.dart';
import 'package:typing_hero/types/errormessage.dart';
import 'package:typing_hero/types/exitmessage.dart';
import 'package:typing_hero/types/reconnectmessage.dart';
import 'package:typing_hero/types/removeplayermessage.dart';
import 'package:typing_hero/types/resetpointsmessage.dart';
import 'package:typing_hero/types/saveusernamemessage.dart';
import 'package:typing_hero/types/scorepointsmessage.dart';
import 'package:typing_hero/types/startgamemessage.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main(List<String> args) async {

  // check args length
  if (args.length != 2) {
    print("Usage: server <host> <port>");
    return;
  }

  String host = args[0];
  int? port = int.tryParse(args[1]);

  if (port == null) {
    print("Port must be a number!");
    return;
  }

  GameServer server = GameServer(host: host, port: port);
  server.run();
}

class GameServer {
  late final FutureOr<Response> Function(Request) _handler;

  final Random _random = Random();
  final Map<String, WebSocketChannel?> connections = {};
  final List<GameRoom> rooms = [];

  final int port;
  final String host;

  GameServer({required this.host, required this.port}) {
    _handler = webSocketHandler(_onNewConnection);
  }
  
  int _getRandomRoomPin() {
    int pin;
    do {
      pin = _random.nextInt(899999) + 100000;
    }
    while (rooms.any((room) => room.pin == pin));

    return pin;
  }

  void _onNewConnection(WebSocketChannel client) {
    String id = const Uuid().v4();
    connections[id] = client;

    client.stream.listen(
      (message) => _onMessage(id, message),
      onDone: () => _onConnectionClosed(id)
      );
  }

  void _onConnectionClosed(String id) {
    connections[id] = null;
  }

  void _send(String userId, String type, Map<String, Object?> json) {

    WebSocketChannel? client = connections[userId];
    if (client == null) return;

    json["type"] = type;
    client.sink.add(jsonEncode(json));
  }

  void _sendUnauthorizedError(String userId, {String tag = ""}) {
    _send(userId, "ErrorMessage", ErrorMessage(message: "$tag: Unautorisierter Zugriff").toJson());
  }

  void _sendRoomNotFound(String userId, {String tag = ""}) {
        _send(userId, "ErrorMessage", ErrorMessage(message: "$tag: Raum nicht gefunden").toJson());
  }

  Future<void> _onMessage(String userId, dynamic message) async {
    Map<String, Object?> json = jsonDecode(message);
    String? type = json["type"] as String?;
    if (type == null) return;

    switch (type) {
      case "EnterRoomMessage":
        EnterRoomMessage req = EnterRoomMessage.fromJson(json);

        // find room
        int index = rooms.indexWhere((room) => room.pin == req.pin);
        if (index == -1) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "Der Game Pin ${req.pin} ist ungültig!").toJson());
          return;
        }

        // room is closed
        if (!rooms[index].open) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "Der Raum ist schon geschlossen!").toJson());
          return;
        }

        // user with id already exists
        if (rooms[index].players.any((element) => element.id == userId)) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "Du bist schon im Raum!").toJson());
          return;
        }

        
        User user = User(id: userId, username: "Spieler ${rooms[index].players.length + 1}", points: 0, gameRoomPin: req.pin);
        rooms[index].players.add(user);

        _send(userId, "User", user.toJson());
        _send(rooms[index].ownerId, "GameRoom", rooms[index].toJson());

      case "SaveUsernameMessage":
        SaveUsernameMessage req = SaveUsernameMessage.fromJson(json);

        int roomIndex = rooms.indexWhere((room) => room.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "SaveUsernameMessage");
          return;
        }

        int userIndex = rooms[roomIndex].players.indexWhere((user) => user.id == userId);
        if (userIndex == -1) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "Konnte den Benutzernamen nicht speichern! Grund: Benutzer-ID ungültig").toJson());
          return;
        }

        // check for duplicate username
        if (rooms[roomIndex].players[userIndex].username != req.username) {
          if (rooms[roomIndex].players.any((player) => player.id != userId && player.username == req.username) || req.username.startsWith("Spieler") ) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "Der Benutzername ist schon vergeben!").toJson());
          return;
        }
        }
        
        rooms[roomIndex].players[userIndex].username = req.username;
        
        _send(userId, "User", rooms[roomIndex].players[userIndex].toJson());
        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());

        // send game to new player
        if (rooms[roomIndex].game != null) {
          _send(userId, "Game", rooms[roomIndex].game!.toJson());
        }

      case "ScorePointsMessage":
        ScorePointsMessage req = ScorePointsMessage.fromJson(json);
        
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "ScorePointsMessage");
          return;
        }

        int playerIndex = rooms[roomIndex].players.indexWhere((element) => element.id == userId);
        if (playerIndex == -1) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "ScorePointsMessage: Ungültige UserID").toJson());
          return;
        }

        rooms[roomIndex].players[playerIndex].points = rooms[roomIndex].players[playerIndex].points + req.points;

        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());
        _send(userId, "User", rooms[roomIndex].players[playerIndex].toJson());

      case "CreateRoomMessage":
        GameRoom room = GameRoom(ownerId: userId, pin: _getRandomRoomPin(), open: true, players: [], game: null);
        rooms.add(room);
        _send(userId, "GameRoom", room.toJson());

        // remove room after 6 hours
        Future.delayed(const Duration(hours: 6), () {
          rooms.removeWhere((element) => element.pin == room.pin);

          // log room removal
          print("[*] Room removed with pin ${room.pin}");
        });

        // log room creation
        print("[*] Room created with pin ${room.pin}");

      case "CloseRoomMessage":
        CloseRoomMessage req = CloseRoomMessage.fromJson(json);

        // find and update room
        int index = rooms.indexWhere((room) => room.pin == req.pin && room.ownerId == userId);
        if (index == -1) {
          _sendRoomNotFound(userId, tag: "CloseRoomMessage");
          return;
        }

        rooms[index].open = !req.closed;

        // update teacher
        _send(userId, "GameRoom", rooms[index].toJson());

      case "StartGameMessage":
        StartGameMessage req = StartGameMessage.fromJson(json);

        // find room
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "StartGameMessage");
          return;
        }

        // requesting client is not the room owner
        if (rooms[roomIndex].ownerId != userId) {
          _sendUnauthorizedError(userId, tag: "StartGameMessage");
          return;
        }

        rooms[roomIndex].game = req.game;

        // send game to teacher and client
        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());
        for (User user in rooms[roomIndex].players) {
          _send(user.id, "Game", req.game.toJson());
        }

      case "ResetPointsMessage":
        ResetPointsMessage req = ResetPointsMessage.fromJson(json);

        // find room
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "ResetPointsMessage");
          return;
        }

        // requesting client is not the room owner
        if (rooms[roomIndex].ownerId != userId) {
          _sendUnauthorizedError(userId, tag: "ResetPointsMessage");
          return;
        }

        for (int i = 0; i < rooms[roomIndex].players.length; i++) {
          rooms[roomIndex].players[i].points = 0;
          _send(rooms[roomIndex].players[i].id, "User", rooms[roomIndex].players[i].toJson());
        }

        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());

      case "ReconnectMessage":
        ReconnectMessage req = ReconnectMessage.fromJson(json);

        // user doesn't exist
        if (!connections.containsKey(req.oldUserId)) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "ReconnectMessage: Alte User ID ist ungültig").toJson());
          _send(userId, "ExitMessage", ExitMessage().toJson());
          return;
        }

        // room doesnt exist
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "ReconnectMessage");
          _send(userId, "ExitMessage", ExitMessage().toJson());
          return;
        }

        // reconnect teacher
        if (req.teacher) {
          // old user is room owner
          if (rooms[roomIndex].ownerId != req.oldUserId) {
            _sendUnauthorizedError(userId, tag: "ReconnectMessage");
            _send(userId, "ExitMessage", ExitMessage().toJson());
            return;
          }

          // set new user id for room
          rooms[roomIndex].ownerId = userId;
        }

        // reconnect player
        else {
          // player doesnt exist
          int playerIndex = rooms[roomIndex].players.indexWhere((element) => element.id == req.oldUserId);
          if (playerIndex == -1) {
            _send(userId, "ErrorMessage", ErrorMessage(message: "ReconnectMessage: Spieler nicht im Raum gefunden").toJson());
            _send(userId, "ExitMessage", ExitMessage().toJson());
            return;
          }

          // set new user id
          rooms[roomIndex].players[playerIndex].id = userId;

          // send user info back to player
          _send(userId, "User", rooms[roomIndex].players[playerIndex].toJson());

          if (rooms[roomIndex].game != null) {
            _send(userId, "Game", rooms[roomIndex].game!.toJson());
          }
        }

        // remove old connection
        connections.remove(req.oldUserId);
        
        // send room info to teacher
        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());

      case "RemovePlayerMessage":
        RemovePlayerMessage req = RemovePlayerMessage.fromJson(json);

        // find room
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "RemovePlayerMessage");
          return;
        }

        // requesting client is not the room owner
        if (rooms[roomIndex].ownerId != userId) {
          _sendUnauthorizedError(userId, tag: "RemovePlayerMessage");
          return;
        }

        // find player
        int playerIndex = rooms[roomIndex].players.indexWhere((element) => element.id == req.userId);
        if (playerIndex == -1) {
          _send(userId, "ErrorMessage", ErrorMessage(message: "RemovePlayerMessage: Spieler nicht im Raum gefunden").toJson());
          return;
        }

        // remove player
        User user = rooms[roomIndex].players.removeAt(playerIndex);

        // send exit message to player
        _send(user.id, "ExitMessage", ExitMessage().toJson());
        _send(user.id, "ErrorMessage", ErrorMessage(message: "Du wurdest aus dem Raum entfernt").toJson());

        // send room info to teacher
        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());

      case "ExitMessage":
        // teacher case
        int roomIndex = rooms.indexWhere((element) => element.ownerId == userId);
        if (roomIndex != -1) {
          
          for (User user in rooms[roomIndex].players) {
            _send(user.id, "ErrorMessage", ErrorMessage(message: "Der Lehrer hat den Raum verlassen!").toJson());
            _send(user.id, "ExitMessage", ExitMessage().toJson());
          }

          rooms.removeAt(roomIndex);
          return;
        }

        // player case
        for (GameRoom room in rooms) {
          int playerIndex = room.players.indexWhere((element) => element.id == userId);
          if (playerIndex != -1) {
            User user = room.players.removeAt(playerIndex);
            _send(room.ownerId, "GameRoom", room.toJson());
            _send(room.ownerId, "ErrorMessage", ErrorMessage(message: "${user.username} hat den Raum verlassen!").toJson());
            return;
          }
        }

      default:
        print("[!] Unknown Message: $json");
    }
  }

  void run() {
    print("[+] Server is running on $host:$port");
    serve(_handler, host, port);
  }
}