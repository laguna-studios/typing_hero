import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:typing_hero/game_repository.dart';
import 'package:typing_hero/types.dart';
import 'package:uuid/uuid.dart';

import '../types/wordlist.dart';

class TeacherCubit extends HydratedCubit<TeacherState> {

  static const teamColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.pink,
    Colors.lime,
    Colors.grey,
  ];

  static const TeacherState initialState = TeacherState(gameMode: 0, teamCount: 2, membership: {});

  final GameRepository gameRepository;

  final TextEditingController minutesController = TextEditingController(text: "5");
  final TextEditingController teamsController = TextEditingController();

  TeacherCubit(super.initialState, {required this.gameRepository}) {
    teamsController.text = state.teamCount.toString();
  }

  void closeRoom(bool closed) {
    gameRepository.closeRoom(closed);
  }

  void startGame() {
    int? minutesToPlay = int.tryParse(minutesController.text);
    if (minutesToPlay == null) return;

    DateTime now = DateTime.now();
    DateTime begin = now.add(const Duration(seconds: 1));
    DateTime end = begin.add(Duration(minutes: minutesToPlay));

    List<String> wordList = getWordList(minutesToPlay * 30);
    Game game = Game(id: const Uuid().v4(), words: wordList, startTime: begin.millisecondsSinceEpoch, endTime: end.millisecondsSinceEpoch);
    gameRepository.startGame(game);
  }

  void resetPoints() {
    gameRepository.resetPoints();
  }

  void setGameMode(int mode) {
    if (0 <= 0 && mode <= 2) {
      emit(state.copyWith(gameMode: mode));
    }
  }

  void setTeamCount(String value) {
    int? teamCount = int.tryParse(value);
    if (teamCount == null) return;

    Map<String, int> membership = Map.from(state.membership);
    membership.removeWhere((_, value) => value > (teamCount - 1));

    emit(state.copyWith(teamCount: min(teamCount, teamColors.length), membership: membership));
  }

  void setMembership(User user, int team) {
    Map<String, int> membership = Map.from(state.membership);
    membership[user.id] = team;
    emit(state.copyWith(membership: membership));
  }

  void removePlayer(User user) {
    gameRepository.removePlayer(user.id);

    Map<String, int> membership = Map.from(state.membership);
    membership.remove(user.id);
    emit(state.copyWith(membership: membership));
  }
  
  @override
  TeacherState? fromJson(Map<String, dynamic> json) {
    return TeacherState.fromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson(TeacherState state) {
    return state.toJson();
  }
}
