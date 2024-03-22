import 'dart:async';
import 'package:typing_hero/types/closeroommessage.dart';
import 'package:typing_hero/types/createroommessage.dart';
import 'package:typing_hero/types/enterroommessage.dart';
import 'package:typing_hero/types/errormessage.dart';
import 'package:typing_hero/types/resetpointsmessage.dart';
import 'package:typing_hero/types/saveusernamemessage.dart';
import 'package:typing_hero/types/scorepointsmessage.dart';
import 'package:typing_hero/types/startgamemessage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';

import 'types.dart';

class GameRepository {
  final String hostname;
  final int port;
  
  int? _gameRoomPin;

  late WebSocketChannel _webSocketChannel;

  final StreamController<GameRoom> _currentGameRoomController;
  late final Stream<GameRoom> currentGameRoom;

  final StreamController<User> _currentUserController;
  late final Stream<User> currentUser;

  final StreamController<Game> _currentGameController;
  late final Stream<Game> currentGame;

  final StreamController<String> _errorStreamController;
  late final Stream<String> errors;

  GameRepository({required this.hostname, required this.port})
      : _currentGameRoomController = StreamController<GameRoom>(),
        _currentUserController = StreamController<User>(),
        _currentGameController = StreamController<Game>(),
        _errorStreamController = StreamController<String>() {
    currentGameRoom = _currentGameRoomController.stream;
    currentUser = _currentUserController.stream;
    currentGame = _currentGameController.stream;
    errors = _errorStreamController.stream;
    _connectToServer();
  }

  void _connectToServer({bool debug = false}) async {
    try {
      _webSocketChannel =
          WebSocketChannel.connect(Uri.parse("ws://$hostname:$port"));
      await _webSocketChannel.ready;
      if (debug) {
      _errorStreamController.add("Verbindung zum Server hergestellt");
    }
    } on WebSocketChannelException {
      _errorStreamController.sink
          .add("Konnte keine Verbindung zum Server aufbauen");
      await Future.delayed(const Duration(seconds: 5));
      _connectToServer(debug: true);
      return;
    }
    _webSocketChannel.stream.listen(_onDataReceived,
        onError: _onConnectionError, onDone: _onConnectionDone);
  }

  void _onDataReceived(dynamic message) {
    Map<String, Object?> json = jsonDecode(message);
    String? type = json["type"] as String?;
    if (type == null) return;

    switch (type) {

      case "Game":
        Game game = Game.fromJson(json);
        _currentGameController.add(game);

      case "User":
        User user = User.fromJson(json);
        _currentUserController.add(user);

      case "GameRoom":
        GameRoom room = GameRoom.fromJson(json);
        _gameRoomPin = room.pin;
        _currentGameRoomController.add(room);

      case "ErrorMessage":
        ErrorMessage errorMessage = ErrorMessage.fromJson(json);
        _errorStreamController.add(errorMessage.message);

      default:
        print("Unknown Message: $json");

    }

  }

  void _onConnectionError(Object error) {
    _errorStreamController.add("Verbindung zum Server verloren! $error");
  }

  void _onConnectionDone() {
    _errorStreamController.add("Verbindung zum Server beendet!");
    Future.delayed(const Duration(seconds: 5), () => _connectToServer(debug: true));
  }

  void close() {
    _currentGameRoomController.close();
    _currentUserController.close();
    _currentGameController.close();
    _errorStreamController.close();
    _webSocketChannel.sink.close();
  }

  void _send(Type type, Map<String, Object?> json) {
    json["type"] = type.toString();
    _webSocketChannel.sink.add(jsonEncode(json));
  }

  // Teacher Methods
  void createRoom() {
    _send(CreateRoomMessage, CreateRoomMessage().toJson());
  }

  void closeRoom(bool closed) {
    if (_gameRoomPin == null) {
      _errorStreamController.add("Du hast dich in keinem Raum angemeldet!");
      return;
    }
    _send(CloseRoomMessage, CloseRoomMessage(pin: _gameRoomPin!, closed: closed).toJson());
  }

  void startGame(Game game) {
    _send(StartGameMessage, StartGameMessage(pin: _gameRoomPin!, game: game).toJson());
  }

  void resetPoints() {
    _send(ResetPointsMessage, ResetPointsMessage(pin: _gameRoomPin!).toJson());
  }

  // Player Methods
  void joinRoom(int pin) {
    _gameRoomPin = pin;
    _send(EnterRoomMessage, EnterRoomMessage(pin: pin).toJson());
  }

  void saveUsername(int pin, String username) {
    _send(SaveUsernameMessage, SaveUsernameMessage(pin: pin, username: username).toJson());
  }

  void scorePoints(int points) {
    _send(ScorePointsMessage, ScorePointsMessage(pin: _gameRoomPin!, points: points).toJson());
  }
}