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
import 'package:typing_hero/types/reconnectmessage.dart';
import 'package:typing_hero/types/removeplayermessage.dart';
import 'package:typing_hero/types/resetpointsmessage.dart';
import 'package:typing_hero/types/saveusernamemessage.dart';
import 'package:typing_hero/types/scorepointsmessage.dart';
import 'package:typing_hero/types/startgamemessage.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const String ip = "192.168.43.49";

void main() async {
  GameServer server = GameServer();
  server.run();
}

class GameServer {
  late final FutureOr<Response> Function(Request) _handler;

  final Random _random = Random();
  final Map<String, WebSocketChannel?> connections = {};
  final List<GameRoom> rooms = [];

  GameServer() {
    _handler = webSocketHandler(_onNewConnection);
  }
  
  int _getRandomRoomPin() {
    int pin;
    do {
      pin = _random.nextInt(899) + 100;
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

        // send game to new player
        if (rooms[index].game != null) {
          _send(userId, "Game", rooms[index].game!.toJson());
        }

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
          return;
        }

        // room doesnt exist
        int roomIndex = rooms.indexWhere((element) => element.pin == req.pin);
        if (roomIndex == -1) {
          _sendRoomNotFound(userId, tag: "ReconnectMessage");
          return;
        }

        // reconnect teacher
        if (req.teacher) {
          // old user is room owner
          if (rooms[roomIndex].ownerId != req.oldUserId) {
            _sendUnauthorizedError(userId, tag: "ReconnectMessage");
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
            return;
          }

          // set new user id
          rooms[roomIndex].players[playerIndex].id = userId;

          // send user info back to player
          _send(req.oldUserId, "User", rooms[roomIndex].players[playerIndex].toJson());

          if (rooms[roomIndex].game != null) {
            _send(req.oldUserId, "Game", rooms[roomIndex].game!.toJson());
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
        rooms[roomIndex].players.removeAt(playerIndex);

        // send room info to teacher
        _send(rooms[roomIndex].ownerId, "GameRoom", rooms[roomIndex].toJson());

      default:
        print("[!] Unknown Message: $json");
    }
  }

  void run() {
    serve(_handler, ip, 9999);
  }
}