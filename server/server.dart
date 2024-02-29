import 'dart:async';
import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:typing_hero/types.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const List<String> words = [
  "Esel",
  "Schule",
  "Fahrrad",
  "Apfel",
  "sehen",
  "laufen",
  "Schulbeginn"
];

void main() async {

  GameServer server = GameServer();
  server.run();

}

class GameServer {

  WebSocketChannel? _admin = null;
  final List<WebSocketChannel> _clients = [];
  final List<Player> _players = [];
  late FutureOr<Response> Function(Request) _handler;

  GameServer() {
    _handler = webSocketHandler(_onNewConnection);
  }
  
  void _onNewConnection(WebSocketChannel client) {
    _clients.add(client);
    client.stream.listen((event) {
      Message msg = Message.fromJson(json.decode(event));
      _onMessage(client, msg);
    });
  }

  void _onMessage(WebSocketChannel client, Message message) {

    switch (MessageType.values[message.type]) {
      case MessageType.registerReq:
        var req = RegisterMessage.fromJson(json.decode(message.data));
        print(req);

        if (_players.any((element) => element.username == req.username)) {
          client.sink.add(json.encode(Message(type: MessageType.registerRes.index, data: json.encode(RegisterResponseMessage(success: false, id: "", username: "").toJson()))));
        } else {
          String uuid = Uuid().v4();
          client.sink.add(json.encode(Message(type: MessageType.registerRes.index, data: json.encode(RegisterResponseMessage(success: true, id: uuid, username: req.username).toJson()))));
          _players.add(Player(id: uuid, username: req.username, points: 0));
        }
        break;
      
      case MessageType.scoredPointsReq:
        var req = ScoredPointsMessage.fromJson(json.decode(message.data));
        print(req);

        int index = _players.indexWhere((element) => element.id == req.id);
        
        Player p = _players.removeAt(index);
        p = p.copyWith(points: p.points + req.points);
        _players.add(p);
        break;
      
      case MessageType.adminReq:
        print("Become Admin");
        _admin = client;
        break;
      
      case MessageType.startGame:
        var req = StartGameMessage.fromJson(json.decode(message.data));
        print(req);

        var res = WordsMessage(words: words, minutes: req.minutes);
        for (var c in _clients) {
          c.sink.add(json.encode(Message(type: MessageType.wordsRes.index, data: json.encode(res.toJson())).toJson()));
        }
        break;
      
      default:
        print("Server - Unwanted Message: ${message.type}");
    }

    _sendOverview();
  }

  void _sendOverview() {
    if (_admin == null) return;
    _admin?.sink.add(json.encode(Message(type: MessageType.overview.index, data: json.encode(OverviewMessage(players: _players).toJson())).toJson()));
  }

  void run() {
    serve(_handler, "localhost", 9999);
  }

}