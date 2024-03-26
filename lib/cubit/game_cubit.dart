import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:typing_hero/game_repository.dart';
import 'package:typing_hero/main.dart';
import 'package:typing_hero/types.dart';

class GameCubit extends HydratedCubit<AppState> {
  static const AppState initialState = AppState(
      currentScreen: GamePinScreen.screenIndex,
      error: "",
      wordIndex: 0,
      typing: "",
      secondsLeft: 0,
      user: null,
      game: null,
      gameRoom: null);

  final GameRepository gameRepository;
  final List<StreamSubscription> _subscriptions = [];

  final TextEditingController gamePinController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  final FocusNode focusNode = FocusNode();

  bool counting = false;

  GameCubit(super.initialState, {required this.gameRepository}) {
    focusNode.addListener(_onFocusListenerChanged);

    _subscriptions.add(gameRepository.errors.listen(_showError));
    _subscriptions
        .add(gameRepository.currentGameRoom.listen(_onGameRoomChanged));
    _subscriptions.add(gameRepository.currentUser.listen(_onUserChanged));
    _subscriptions.add(gameRepository.currentGame.listen(_onGameChanged));
  }

  @override
  Future<void> close() {
    for (var sub in _subscriptions) {
      sub.cancel();
    }
    return super.close();
  }

  void _showError(String message) {
    int time = DateTime.now().millisecondsSinceEpoch;
    emit(state.copyWith(error: "$time $message"));
  }

  void _onGameRoomChanged(GameRoom? room) {
    // reset game
    if (room == null) {
      emit(initialState);
      return;
    }

    int newRoomIndex = GamePinPreviewScreen.screenIndex;
    if (state.currentScreen == TeacherScreen.screenIndex) {
      newRoomIndex = TeacherScreen.screenIndex;
    }

    if (room.game != null && !counting) {
      counting = true;
      DateTime begin =
          DateTime.fromMillisecondsSinceEpoch(room.game!.startTime);
      DateTime end = DateTime.fromMillisecondsSinceEpoch(room.game!.endTime);

      Duration waitingTime = begin.difference(DateTime.now());

      Future.delayed(waitingTime.isNegative ? Duration.zero : waitingTime, () {
        int secondsLeft = end.difference(DateTime.now()).inSeconds;

        if (secondsLeft > 0) {
          emit(state.copyWith(
            secondsLeft: secondsLeft,
          ));
          checkTimer(gameOverOnZero: false);
        } else {
          emit(state.copyWith(
            secondsLeft: 0,
          ));
          counting = false;
        }
      });
    }

    emit(state.copyWith(gameRoom: room, currentScreen: newRoomIndex));
  }

  void _onUserChanged(User? user) {
    // reset game
    if (user == null) {
      emit(initialState);
      return;
    }

    int newScreenIndex = UsernameScreen.screenIndex;

    // resetting points in game over screen
    if (state.currentScreen == GameOverScreen.screenIndex) {
      newScreenIndex = GameOverScreen.screenIndex;
    }
    // scoring points
    else if (state.game != null) {
      newScreenIndex = GameScreen.screenIndex;
    }
    // saving username
    else if (state.user != null) {
      newScreenIndex = LobbyScreen.screenIndex;
    }

    usernameController.text = user.username;
    emit(state.copyWith(user: user, currentScreen: newScreenIndex));
  }

  void _onGameChanged(Game? game) {
    // reset game
    if (game == null) {
      emit(initialState);
      return;
    }

    DateTime begin = DateTime.fromMillisecondsSinceEpoch(game.startTime);
    DateTime end = DateTime.fromMillisecondsSinceEpoch(game.endTime);

    Duration waitingTime = begin.difference(DateTime.now());

    Future.delayed(waitingTime.isNegative ? Duration.zero : waitingTime, () {
      int secondsLeft = end.difference(DateTime.now()).inSeconds;

      if (secondsLeft > 0) {
        emit(state.copyWith(
            game: game,
            typing: "",
            secondsLeft: secondsLeft,
            currentScreen: GameScreen.screenIndex));
        checkTimer();
      } else {
        emit(state.copyWith(
            game: game,
            wordIndex: 0,
            typing: "",
            secondsLeft: 0,
            currentScreen: GameOverScreen.screenIndex));
      }
    });
  }

  void checkTimer({bool gameOverOnZero = true}) {
    // not in game anymore
    if (state.currentScreen != GameScreen.screenIndex && state.currentScreen != TeacherScreen.screenIndex) {
      counting = false;
      return;
    }

    int? endTime = state.game?.endTime ?? state.gameRoom?.game?.endTime;
    if (endTime == null) {
      return;
    }
  
    int secondsLeft = (endTime - DateTime.now().millisecondsSinceEpoch) ~/ 1000;

    if (secondsLeft < 1) {
      if (gameOverOnZero) {
        emit(state.copyWith(
          secondsLeft: 0,
          currentScreen: GameOverScreen.screenIndex));
      }
      counting = false;
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(secondsLeft: secondsLeft - 1));
      checkTimer(gameOverOnZero: gameOverOnZero);
    });
  }

  void _onFocusListenerChanged() {
    if (!focusNode.hasFocus) {
      focusNode.requestFocus();
    }
  }

  // check for page reload
  void checkPageReload() {
    if (state.user != null) {
      _checkPageReloadPlayer();
    } else if (state.gameRoom != null) {
      _checkPageReloadTeacher();
    } else {
      emit(initialState);
    }
  }

  void _checkPageReloadTeacher() {
    gameRepository.setConnectionInfo(state.gameRoom!.ownerId, state.gameRoom!.pin, true);

    // no game started yet
    if (state.gameRoom!.game == null) {
      emit(state.copyWith(secondsLeft: 0, typing: "", wordIndex: 0));
      return;
    }

    // calculate seconds left
    int secondsLeft = (state.gameRoom!.game!.endTime - DateTime.now().millisecondsSinceEpoch) ~/ 1000;
    if (secondsLeft > 0) {
      emit(state.copyWith(secondsLeft: secondsLeft));
      checkTimer(gameOverOnZero: false);
    } else {
      emit(state.copyWith(secondsLeft: 0));
    }
  }

  void _checkPageReloadPlayer() {
    gameRepository.setConnectionInfo(state.user!.id, state.user!.gameRoomPin, false);

    // check if game is available
    if (state.game == null) {
      return;
    }

    int secondsLeft = (state.game!.endTime - DateTime.now().millisecondsSinceEpoch) ~/ 1000;
    if (secondsLeft > 0) {
      emit(state.copyWith(secondsLeft: secondsLeft));
      checkTimer();
    } else {
      emit(state.copyWith(secondsLeft: 0, currentScreen: GameOverScreen.screenIndex));
    }
  }

  void createRoom() {
    gameRepository.createRoom();
  }

  void joinRoom() {
    int? pin = int.tryParse(gamePinController.text);
    if (pin == null) return;

    gameRepository.joinRoom(pin);
  }

  void saveUsername() {
    String username = usernameController.text;
    if (username.isEmpty) return;

    gameRepository.saveUsername(state.user!.gameRoomPin, username);
  }

  void goToTeacherScreen() {
    emit(state.copyWith(currentScreen: TeacherScreen.screenIndex));
  }

  void enterCharacter(KeyEvent event) {
    String? char = event.character;
    if (char == null) return;

    String nextCharacter =
        state.game!.words[state.wordIndex][state.typing.length];
    if (char != nextCharacter) return;

    String typing = state.typing + char;

    // finished typing word
    if (typing == state.game!.words[state.wordIndex]) {
      gameRepository.scorePoints(typing.length * 100);
      emit(state.copyWith(wordIndex: state.wordIndex + 1, typing: ""));
    }

    // not ready yet
    else {
      emit(state.copyWith(typing: typing));
    }
  }
  
  void exit() {
    gameRepository.exit();
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.fromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }

}
