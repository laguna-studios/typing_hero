import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:typing_hero/types.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//const String ip = "10.16.30.108";
const String ip = "localhost";
const List<Color> teams = [
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.pink
];

void main() {
  TalkRepository talkRepository = TalkRepository(
      channel: WebSocketChannel.connect(Uri.parse("ws://$ip:9999")));
  runApp(TypingHeroApp(
    repository: talkRepository,
  ));
}

class TypingHeroApp extends StatelessWidget {
  final TalkRepository _repository;

  const TypingHeroApp({super.key, required TalkRepository repository})
      : _repository = repository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => _repository,
      child: BlocProvider<KidsCubit>(
        create: (context) => KidsCubit(repository: _repository),
        child: MaterialApp(
          home: LoginScreen(),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<KidsCubit, KidsState>(
      listenWhen: (previous, current) =>
          previous.username.isEmpty && current.username.isNotEmpty,
      listener: (context, state) {
        KidsGameScreen.start(context);
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              SizedBox(
                  width: 260,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Benutzername"),
                  )),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                  height: 48,
                  width: 260,
                  child: OutlinedButton(
                      onPressed: () {
                        if (_controller.text.isEmpty) return;
                        KidsCubit.of(context).setUsername(_controller.text);
                      },
                      child: Text("Weiter"))),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Opacity(
                  opacity: 0.1,
                  child: SizedBox(
                      width: 260,
                      child: OutlinedButton(
                          onPressed: () {
                            AdminStartScreen.start(context);
                          },
                          child: Text("Admin"))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KidsGameScreen extends StatelessWidget {
  static const TextStyle hudTextStyle =
      TextStyle(fontSize: 28, color: Colors.black38);
  static const TextStyle gameOverTextStyle =
      TextStyle(fontSize: 90, color: Colors.black38);

  static void start(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return KidsGameScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!KidsCubit.of(context).focusNode.hasFocus) {
          KidsCubit.of(context).focusNode.requestFocus();
          print("Requested Focus");
        }
      },
      child: Scaffold(
        body: BlocBuilder<KidsCubit, KidsState>(
            buildWhen: (previous, current) =>
                current.secondsLeft == -1 ||
                (previous.currentWord.isEmpty && current.currentWord.isNotEmpty) ||
                (previous.secondsLeft == -1 && current.secondsLeft >= 60),
            builder: (context, state) {
              if (state.currentWord.isEmpty) {
                return Center(
                  child: Text(
                    "Mache dich bereit!\nDas Spiel geht gleich los...",
                    style: gameOverTextStyle,
                    textAlign: TextAlign.center,
                  ),
                );
              }
      
              if (state.secondsLeft == -1) {
                return Center(
                  child: Text(
                    "Gut gemacht!\nDas Spiel ist vorbei :)",
                    style: gameOverTextStyle,
                    textAlign: TextAlign.center,
                  ),
                );
              }
      
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocBuilder<KidsCubit, KidsState>(
                        builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                            "Punkte: ${state.points}",
                            style: hudTextStyle,
                          )),
                          Expanded(
                              child: Text(
                            state.username,
                            textAlign: TextAlign.center,
                            style: hudTextStyle,
                          )),
                          Expanded(
                              child: Text(
                            "Verbleibende Zeit: ${state.secondsLeft}",
                            textAlign: TextAlign.end,
                            style: hudTextStyle,
                          )),
                        ],
                      );
                    }),
                  ),
                  Expanded(
                      child: Center(
                          child: KeyboardListener(
                              focusNode: KidsCubit.of(context).focusNode,
                              autofocus: true,
                              onKeyEvent: (value) {
                                String? char = value.character;
                                if (char == null) return;
                                KidsCubit.of(context).onKeyPressed(char);
                              },
                              child: BlocBuilder<KidsCubit, KidsState>(
                                  buildWhen: (previous, current) =>
                                      previous.currentWord !=
                                          current.currentWord ||
                                      previous.currentText != current.currentText,
                                  builder: (context, state) => RichText(
                                          text: TextSpan(
                                              text: state.currentText,
                                              style: TextStyle(
                                                  fontSize: 160,
                                                  color: Colors.green),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: state.currentWord.substring(
                                                    state.currentText.length),
                                                style: TextStyle(
                                                    fontSize: 160,
                                                    color: Colors.black
                                                        .withAlpha(100)))
                                          ])))))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Schreibe das Wort oder den Satz!",
                      style: hudTextStyle,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}

class AdminStartScreen extends StatefulWidget {
  static void start(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return BlocProvider<AdminCubit>(
          create: (_) => AdminCubit(
              repository: RepositoryProvider.of<TalkRepository>(context)
                ..becomeAdmin()),
          child: AdminStartScreen());
    }));
  }

  @override
  State<AdminStartScreen> createState() => _AdminStartScreenState();
}

class _AdminStartScreenState extends State<AdminStartScreen> {

  static const TextStyle _tableTextStyle = TextStyle(fontSize: 24);

  final TextEditingController _minutesController = TextEditingController();
  final TextEditingController _groupCountController =
      TextEditingController(text: "2");

  @override
  void dispose() {
    _minutesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminCubit, AdminState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Spielplan"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlocBuilder<AdminCubit, AdminState>(
                            buildWhen: (previous, current) =>
                                previous.mode != current.mode,
                            builder: (context, state) {
                              return ToggleButtons(
                                  onPressed: (v) {
                                    AdminCubit.of(context)
                                        .setGameMode(GameMode.values[v]);
                                  },
                                  children: [
                                    Icon(Icons.person),
                                    Icon(Icons.groups),
                                    Icon(Icons.diversity_3),
                                  ],
                                  isSelected: [
                                    state.mode == GameMode.single,
                                    state.mode == GameMode.groups,
                                    state.mode == GameMode.together,
                                  ]);
                            }),
                        SizedBox(
                          width: 64,
                        ),
                        SizedBox(
                          width: 260,
                          child: TextField(
                            controller: _minutesController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Minuten"),
                          ),
                        ),
                        SizedBox(
                          width: 64,
                        ),
                        SizedBox(
                          width: 260,
                          child: TextField(
                            controller: _groupCountController,
                            onChanged: (value) {
                              int? count = int.tryParse(value);
                              if (count == null || count < 2) return;
                              AdminCubit.of(context).setGroupCount(count);
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Gruppenanzahl"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<AdminCubit, AdminState>(
                    builder: (context, state) {
                  if (state.players.isEmpty) {
                    return Center(
                      child: Text("Die Anmeldung kann losgehen :)"),
                    );
                  }

                  if (state.mode == GameMode.single) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tabelle:", style: TextStyle(fontSize: 24)),
                          Expanded(
                              child: ListView.builder(
                                  itemCount: state.players.length,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 24),
                                          Text("${index + 1}.", style: _tableTextStyle,),
                                          SizedBox(width: 16,),
                                          Text("${state.players[index].username}", style: _tableTextStyle,),
                                          Spacer(),
                                          SizedBox(
                                            width: 200, child: Text("Punkte: ${state.players[index].points}", style: _tableTextStyle,)),
                                        ]
                                        
                                            
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    );
                  } else if (state.mode == GameMode.groups) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SizedBox(
                                width: 200,
                                child: ListView.builder(
                                    itemCount: state.players.length,
                                    itemBuilder: (context, index) {
                                      return Draggable<Player>(
                                        data: state.players[index],
                                        child: ListTile(
                                          tileColor: state.memberships[state.players[index].id] == null ? null : teams[state.memberships[state.players[index].id]!].withAlpha(150),
                                          title: Text(
                                              "${state.players[index].username}"),
                                        ),
                                        feedback:
                                            Card(
                                              child: Padding(
                                                padding: const EdgeInsets.all(4),
                                                child: SizedBox(
                                                  height: 96,
                                                  width: 96,
                                                  child: Material(
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.person, size: 48,),
                                                        Text("${state.players[index].username}"),
                                                      ],
                                                    ),
                                                  )),
                                              ),
                                            ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var i = 0; i < state.groupCount; i++)
                                  DragTarget<Player>(
                                      onAcceptWithDetails: (details) => AdminCubit.of(context).setGroupMembership(details.data, i),
                                      builder: (context, players, _) {
                      
                                        List<Player> teamPlayers = state.players.where((element) => state.memberships[element.id] == i).toList();
                                        int points = 0;
                                        if (teamPlayers.isNotEmpty) {
                                          points = teamPlayers.map((e) => e.points).reduce((value, element) => value + element);
                                        }
                      
                                        return Container(
                                            width: 200,
                                            height: 100,
                                            color: teams[i].withAlpha(150),
                                            child: Center(child: Text("$points", style: TextStyle(fontSize: 48)),),
                                          );
                                      })
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Center(
                      child: Text(
                        "Ihr habt ${state.players.map((e) => e.points).reduce((value, element) => value + element)} Punkte",
                        style: TextStyle(fontSize: 64),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                }),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 260,
                      child: BlocBuilder<AdminCubit, AdminState>(
                          builder: (context, state) {
                        return OutlinedButton(
                            onPressed: state.secondsLeft > 0
                                ? null
                                : () {
                                    int? minutes =
                                        int.tryParse(_minutesController.text);
                                    if (minutes == null || minutes < 1) return;
                                    AdminCubit.of(context).startGame(minutes);
                                  },
                            child: Text(state.secondsLeft > 0
                                ? "Noch ${state.secondsLeft} Sekunden"
                                : "Start"));
                      })),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

class TalkRepository {
  final WebSocketChannel channel;
  final Stream<Message> messageStream;

  TalkRepository({required this.channel})
      : messageStream = channel.stream
            .map<Message>((event) => Message.fromJson(json.decode(event)))
            .asBroadcastStream();

            

  void _send(MessageType type, Map<String, Object?> data) => channel.sink.add(
      json.encode(Message(type: type.index, data: json.encode(data)).toJson()));

  void register(String username) {
    _send(
        MessageType.registerReq, RegisterMessage(username: username).toJson());
  }

  void becomeAdmin() {
    _send(MessageType.adminReq, {});
  }

  void scoredPoints(String id, int points) {
    _send(MessageType.scoredPointsReq,
        ScoredPointsMessage(id: id, points: points).toJson());
  }

  void startGame(int minutes) {
    _send(MessageType.startGame, StartGameMessage(minutes: minutes).toJson());
  }
}

class KidsCubit extends Cubit<KidsState> {
  static KidsCubit of(BuildContext context) =>
      BlocProvider.of<KidsCubit>(context);

  final TalkRepository _repository;
  final List<String> _words = [];
  final FocusNode focusNode = FocusNode();

  KidsCubit({required TalkRepository repository})
      : _repository = repository,
        super(KidsState.initialState) {
    print("Kids listen");
    repository.messageStream.listen(onMessage);
  }

  void onMessage(Message msg) {
    switch (MessageType.values[msg.type]) {
      case MessageType.registerRes:
        var res = RegisterResponseMessage.fromJson(json.decode(msg.data));
        if (res.success) {
          emit(state.copyWith(id: res.id, username: res.username));
        }
        break;

      case MessageType.wordsRes:
        var res = WordsMessage.fromJson(json.decode(msg.data));
        _words.addAll(res.words);
        emit(state.copyWith(
            secondsLeft: res.minutes * 60, currentWord: _words.removeAt(0)));
        _startTimer();
        break;

      default:
        print("Kids - Unwanted Message received: ${msg.type}");
    }
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      int secondsLeft = state.secondsLeft - 1;
      emit(state.copyWith(secondsLeft: secondsLeft));
      if (secondsLeft >= 0) {
        _startTimer();
      }
    });
  }

  void setUsername(String username) {
    _repository.register(username);
  }

  void onKeyPressed(String key) {
    int nextIndex = state.currentText.length;
    String nextChar = state.currentWord[nextIndex];
    if (key == nextChar) {
      String currentText = state.currentText;
      currentText += key;

      if (state.currentWord == currentText) {
        _score();
      } else {
        emit(state.copyWith(currentText: currentText));
      }
    }
  }

  void _score() {
    int points = state.currentWord.length * 100;
    _repository.scoredPoints(state.id, points);
    String nextWord = _words.removeAt(0);
    emit(state.copyWith(
        points: state.points + points, currentWord: nextWord, currentText: ""));
  }
}

class AdminCubit extends Cubit<AdminState> {
  static AdminCubit of(BuildContext context) =>
      BlocProvider.of<AdminCubit>(context);

  final TalkRepository _repository;

  AdminCubit({required TalkRepository repository})
      : _repository = repository,
        super(AdminState.initialState) {
    print("Admin Listen");
    _repository.messageStream.listen(onMessage);
  }

  void onMessage(Message msg) {
    switch (MessageType.values[msg.type]) {
      case MessageType.overview:
        var res = OverviewMessage.fromJson(json.decode(msg.data));
        List<Player> players = List.from(res.players);
        players.sort(
          (a, b) => b.points - a.points,
        );

        emit(state.copyWith(players: players));
        break;

      default:
        print("Admin - Unwanted Message received: ${msg.type}");
    }
  }

  void startGame(int minutes) {
    _repository.startGame(minutes);
    emit(state.copyWith(secondsLeft: minutes * 60));
    _startTimer();
  }

  void setGameMode(GameMode mode) {
    emit(state.copyWith(mode: mode));
  }

  void setGroupCount(int groupCount) {
    if (groupCount < 2) return;
    Map<String, int> memberships = Map.from(state.memberships);
    memberships.removeWhere((key, value) => value >= groupCount);

    emit(state.copyWith(groupCount: groupCount, memberships: memberships));
  }

  void setGroupMembership(Player player, int group) {
    Map<String, int> memberships = Map.from(state.memberships);
    memberships[player.id] = group;
    emit(state.copyWith(memberships: memberships));
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      int secondsLeft = state.secondsLeft - 1;

      if (secondsLeft >= 0) {
        emit(state.copyWith(secondsLeft: secondsLeft));
        _startTimer();
      }
    });
  }
}
