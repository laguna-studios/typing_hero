import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@Freezed(makeCollectionsUnmodifiable: false, addImplicitFinal: false)
class GameRoom with _$GameRoom {
  factory GameRoom({
    required String ownerId,
    required int pin,
    required bool open,

    required List<User> players,
    required Game? game
  }) = _GameRoom;

  factory GameRoom.fromJson(Map<String, Object?> json) => _$GameRoomFromJson(json);
}

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required List<String> words,
    required int startTime,
    required int endTime 
  }) = _Game;

  factory Game.fromJson(Map<String, Object?> json) => _$GameFromJson(json);
}

@unfreezed
class User with _$User {
  factory User({
    required String id,
    required String username,
    required int points,
    required int gameRoomPin
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    required int currentScreen,
    required String error,
    required int wordIndex,
    required String typing,
    required int secondsLeft,

    required User? user,
    required Game? game,
    required GameRoom? gameRoom,
  }) = _AppState;

  factory AppState.fromJson(Map<String, Object?> json) => _$AppStateFromJson(json);
}

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState({
    required int gameMode,
    required int teamCount,
    required Map<String, int> membership
  }) = _TeacherState;

  factory TeacherState.fromJson(Map<String, Object?> json) => _$TeacherStateFromJson(json);
}