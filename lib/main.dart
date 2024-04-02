import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:typing_hero/cubit/game_cubit.dart';
import 'package:typing_hero/cubit/teacher_cubit.dart';
import 'package:typing_hero/game_repository.dart';
import 'package:typing_hero/types.dart';
import 'package:collection/collection.dart';

Future<void> main() async {
  // setup for hydrated cubit
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorage.webStorageDirectory);

  runApp(TypingApp(
    gameRepository: GameRepository(hostname: "lagunacademy.de", port: 443),
  ));
}

class TypingApp extends StatelessWidget {
  final GameRepository gameRepository;

  const TypingApp({super.key, required this.gameRepository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<GameRepository>(
      create: (context) => gameRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GameCubit>(
            create: (context) => GameCubit(GameCubit.initialState,
                gameRepository: gameRepository)
              ..checkPageReload(),
          ),
          BlocProvider<TeacherCubit>(
            create: (context) => TeacherCubit(TeacherCubit.initialState,
                gameRepository: gameRepository),
          ),
        ],
        child: MaterialApp(
          home: BlocBuilder<GameCubit, AppState>(
            buildWhen: (previous, current) =>
                previous.currentScreen != current.currentScreen,
            builder: (context, state) {
              return switch (state.currentScreen) {
                UsernameScreen.screenIndex => const UsernameScreen(),
                GamePinPreviewScreen.screenIndex => const GamePinPreviewScreen(),
                TeacherScreen.screenIndex => const TeacherScreen(),
                LobbyScreen.screenIndex => const LobbyScreen(),
                GameScreen.screenIndex => const GameScreen(),
                GameOverScreen.screenIndex => const GameOverScreen(),
                _ => const GamePinScreen(),
              };
            },
          ),
        ),
      ),
    );
  }
}

class ErrorListener extends StatelessWidget {
  final Widget child;

  const ErrorListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameCubit, AppState>(
      listenWhen: (previous, current) =>
          current.error.isNotEmpty && previous.error != current.error,
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            (state.error.split(" ")..removeAt(0)).join(" "),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.redAccent,
        ));
      },
      child: child,
    );
  }
}

class GamePinScreen extends StatelessWidget {
  static const int screenIndex = 0;

  const GamePinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorListener(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Text("Schreibheld", style: GoogleFonts.butterflyKids(fontSize: 92)),
              SizedBox(
                  width: 250,
                  child: TextField(
                    controller: context.read<GameCubit>().gamePinController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "GAME PIN"),
                  )),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: OutlinedButton(
                    onPressed: context.read<GameCubit>().joinRoom,
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                    ),
                    child: const Text("Los gehts!")),
              ),
              const Spacer(flex: 2),
              OutlinedButton(
                  onPressed: context.read<GameCubit>().createRoom,
                  child: const Text("Weiter als Lehrer")),
              const SizedBox(height: 8)
            ],
          ),
        ),
      ),
    );
  }
}

class UsernameScreen extends StatelessWidget {
  static const int screenIndex = 1;

  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorListener(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Gib einen Benutzernamen ein!", style: TextStyle(fontSize: 32, color: Colors.black38),),
              const SizedBox(height: 32,),
              SizedBox(
                  width: 250,
                  child: TextField(
                    controller: context.read<GameCubit>().usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Benutzername",
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: OutlinedButton(
                    onPressed: context.read<GameCubit>().saveUsername,
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                      ),
                    child: const Text("Weiter")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LobbyScreen extends StatelessWidget {
  static const int screenIndex = 2;

  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ErrorListener(
        child: Column(
          children: [
            PlayerStatusBar(),
            Expanded(
              child: Center(
                  child: Text(
                "Mach dich bereit!\nEs geht gleich los...",
                style: TextStyle(fontSize: 72, color: Colors.black38),
                textAlign: TextAlign.center,
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class GameScreen extends StatelessWidget {
  static const int screenIndex = 3;

  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorListener(
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 24, color: Colors.black38),
          child: BlocBuilder<GameCubit, AppState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: PlayerStatusBar(),
                  ),
                  Expanded(
                      child: Center(
                    child: KeyboardListener(
                      focusNode: context.read<GameCubit>().focusNode
                        ..requestFocus(),
                      onKeyEvent: context.read<GameCubit>().enterCharacter,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: state.typing,
                              style:
                                  const TextStyle(fontSize: 96, color: Colors.green)),
                          TextSpan(
                              text: state.game!.words[state.wordIndex]
                                  .substring(state.typing.length),
                              style: const TextStyle(
                                  fontSize: 96, color: Colors.black38)),
                        ]),
                      ),
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Schreibe das Wort ab! Achte auf die Groß- und Kleinschreibung!"),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class PlayerStatusBar extends StatelessWidget {
  const PlayerStatusBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 24, color: Colors.black38),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<GameCubit, AppState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Punkte: ${state.user?.points ?? 0}")),
                DropdownButton(
                    isExpanded: false,
                    items: [
                      DropdownMenuItem(
                          onTap: context.read<GameCubit>().exit,
                          value: 0,
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.logout),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Spiel verlassen"),
                            ],
                          )),
                    ],
                    onChanged: (_) {},
                    hint: Row(
                      children: [
                        RandomAvatar(state.user?.username ?? "",
                            height: 32, width: 32),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          state.user?.username ?? "",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    underline: const SizedBox()),
                Expanded(
                    child: Text(
                  state.secondsLeft.toString(),
                  textAlign: TextAlign.right,
                )),
              ],
            );
          },
        ),
      ),
    );
  }
}

class GameOverScreen extends StatelessWidget {
  static const int screenIndex = 4;

  const GameOverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ErrorListener(
        child: Column(
          children: [
            PlayerStatusBar(),
            Expanded(
              child: Center(
                child: Text(
                  "Game Over",
                  style: TextStyle(fontSize: 72, color: Colors.black38),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GamePinPreviewScreen extends StatelessWidget {
  static const int screenIndex = 5;

  const GamePinPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorListener(
        child: BlocBuilder<GameCubit, AppState>(
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  const Spacer(),
                  const Text("Der Game Pin lautet:",
                      style: TextStyle(fontSize: 48, color: Colors.black38)),
                  Text(
                    state.gameRoom!.pin.toString(),
                    style: const TextStyle(fontSize: 124),
                  ),
                  Expanded(
                      flex: 2,
                      child: Wrap(
                        runAlignment: WrapAlignment.center,
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (User user in state.gameRoom!.players)
                            Chip(
                                avatar: RandomAvatar(user.username,
                                    height: 64, width: 64),
                                label: Text(user.username)),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: !state.gameRoom!.open,
                          onChanged: (value) =>
                              context.read<TeacherCubit>().closeRoom(value!)),
                      const Text("Diesen Raum für weitere Spieler schließen")
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  OutlinedButton(
                      onPressed: context.read<GameCubit>().goToTeacherScreen,
                      child: const Text("Weiter")),
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TeacherScreen extends StatelessWidget {
  static const int screenIndex = 6;

  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorListener(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: BlocBuilder<GameCubit, AppState>(
                  builder: (context, appState) {
                    return BlocBuilder<TeacherCubit, TeacherState>(
                      builder: (context, teacherState) {
                        return Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ToggleButtons(
                                isSelected: [
                                  for (int i = 0; i < 3; i++)
                                    teacherState.gameMode == i
                                ],
                                onPressed:
                                    context.read<TeacherCubit>().setGameMode,
                                children: const [
                                  Tooltip(
                                      message: "Einzelspieler",
                                      child: Icon(Icons.person)),
                                  Tooltip(
                                      message: "Teams",
                                      child: Icon(Icons.groups)),
                                  Tooltip(
                                      message: "Zusammen",
                                      child: Icon(Icons.diversity_3)),
                                ],
                              ),
                              SizedBox(
                                  width: 80,
                                  child: TextField(
                                    controller: context
                                        .read<TeacherCubit>()
                                        .minutesController,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Spielzeit"),
                                  )),
                              SizedBox(
                                  width: 80,
                                  child: TextField(
                                    controller: context
                                        .read<TeacherCubit>()
                                        .teamsController,
                                    onChanged: context
                                        .read<TeacherCubit>()
                                        .setTeamCount,
                                    enabled: teacherState.gameMode == 1,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Teams"),
                                  )),
                              OutlinedButton.icon(
                                onPressed: appState.secondsLeft > 0
                                    ? null
                                    : context.read<TeacherCubit>().resetPoints,
                                icon: const Icon(Icons.restart_alt),
                                label: const Text("Punkte zurücksetzten"),
                              ),
                              OutlinedButton.icon(
                                onPressed: context.read<GameCubit>().exit,
                                icon: const Icon(Icons.logout),
                                label: const Text("Spiel beenden"),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              BlocBuilder<TeacherCubit, TeacherState>(
                buildWhen: (previous, current) =>
                    previous.gameMode != current.gameMode,
                builder: (context, state) {
                  return Expanded(
                      child: switch (state.gameMode) {
                    0 => const SinglePlayerView(),
                    1 => const TeamPlayView(),
                    _ => const GroupView()
                  });
                },
              ),
              SizedBox(
                height: 80,
                child: BlocBuilder<GameCubit, AppState>(
                  builder: (context, state) {
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 200,
                            child: OutlinedButton.icon(
                                onPressed: () => context
                                    .read<TeacherCubit>()
                                    .closeRoom(state.gameRoom!.open),
                                icon: Icon(state.gameRoom!.open
                                    ? Icons.lock_open
                                    : Icons.lock),
                                label: Text(state.gameRoom!.open
                                    ? "Offen"
                                    : "Geschlossen")),
                          ),
                          Text(
                            "Game Pin: ${state.gameRoom!.pin}",
                            style: const TextStyle(fontSize: 32),
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton.icon(
                                onPressed: state.secondsLeft > 0
                                    ? null
                                    : context.read<TeacherCubit>().startGame,
                                icon: Icon(state.secondsLeft > 0
                                    ? Icons.timer
                                    : Icons.play_arrow),
                                label: Text(state.secondsLeft > 0
                                    ? "Noch ${state.secondsLeft} Sekunden"
                                    : "Spiel starten")),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SinglePlayerView extends StatelessWidget {
  const SinglePlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 32, top: 16, bottom: 16),
          child: Text("Tabelle", style: TextStyle(fontSize: 24)),
        ),
        Expanded(
          child: BlocBuilder<GameCubit, AppState>(
            builder: (context, state) {
              List<User> players = state.gameRoom!.players;
              players.sort((a, b) => b.points - a.points);

              return ListView.separated(
                separatorBuilder: (context, index) => const Divider(endIndent: 12, indent: 12,),
                  itemCount: players.length,
                  itemBuilder: (context, index) {
                    User user = players[index];
                    return Dismissible(
                      background: Container(
                        color: Colors.red[300],
                        child: const Center(
                          child: Text(
                            "Spieler entfernen",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      key: ValueKey(user.id),
                      onDismissed: (_) =>
                          context.read<TeacherCubit>().removePlayer(user),
                      child: ListTile(
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 64,),
                            Text("${index + 1}.", style: const TextStyle(fontSize: 24),),
                            const SizedBox(width: 16,),
                            RandomAvatar(user.username, width: 44, height: 44),
                            const SizedBox(
                              width: 16,
                            )
                          ],
                        ),
                        title: Text(user.username),
                        subtitle: Text(user.points.toString()),
                      ),
                    );
                  });
            },
          ),
        ),
      ],
    );
  }
}

class TeamPlayView extends StatelessWidget {
  const TeamPlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherCubit, TeacherState>(
      builder: (context, teacherState) {
        return BlocBuilder<GameCubit, AppState>(
          builder: (context, appState) {
            List<User> players = List.from(appState.gameRoom?.players ?? []);
            players.sort((a, b) => b.points - a.points);

            return Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ListView.separated(
                          separatorBuilder: (_, __) => const Divider(endIndent: 12, indent: 12,),
                            itemCount: players.length,
                            itemBuilder: (context, index) {
                              User user = players[index];

                              return Draggable(
                                data: user,
                                feedback: Material(
                                  child: Chip(
                                    avatar: RandomAvatar(user.username),
                                    label: Text(user.username),
                                  ),
                                ),
                                child: ListTile(
                                  leading: RandomAvatar(user.username,
                                      width: 44, height: 44),
                                  title: Text(user.username),
                                  tileColor: teacherState.membership[user.id] ==
                                          null
                                      ? null
                                      : TeacherCubit.teamColors[
                                              teacherState.membership[user.id]!]
                                          .withAlpha(150),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                          flex: 4,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runAlignment: WrapAlignment.center,
                            children: [
                              for (int i = 0; i < teacherState.teamCount; i++)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DragTarget<User>(
                                    onWillAcceptWithDetails: (_) => true,
                                    onAcceptWithDetails: (details) {
                                      context
                                          .read<TeacherCubit>()
                                          .setMembership(details.data, i);
                                    },
                                    builder:
                                        (context, candidateData, rejectedData) {
                                      Iterable<User> users = appState
                                          .gameRoom!.players
                                          .where((element) =>
                                              (teacherState
                                                      .membership[element.id] ??
                                                  -1) ==
                                              i);

                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 220,
                                            width: 220,
                                            color: TeacherCubit.teamColors[i]
                                                .withAlpha(150),
                                            child: Wrap(
                                              alignment: WrapAlignment.center,
                                              runAlignment:
                                                  WrapAlignment.center,
                                              runSpacing: 4,
                                              spacing: 4,
                                              children: [
                                                for (User user in users)
                                                  Chip(
                                                    avatar: RandomAvatar(
                                                        user.username),
                                                    label: Text(user.username),
                                                  )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            users
                                                .map((e) => e.points)
                                                .sum
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 32,
                                                color: Colors.black38),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                )
                            ],
                          ))
                    ],
                  ),
                ),
                const Text(
                  "Ziehe die Spieler in die jeweiligen Teams!",
                  style: TextStyle(fontSize: 24, color: Colors.black38),
                )
              ],
            );
          },
        );
      },
    );
  }
}

class GroupView extends StatelessWidget {
  const GroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, AppState>(
      builder: (context, state) {
        return Center(
          child: Text(
            "Zusammen habt ihr ${state.gameRoom!.players.map((e) => e.points).sum} Punkte erreicht!",
            style: const TextStyle(fontSize: 32, color: Colors.black38),
          ),
        );
      },
    );
  }
}
