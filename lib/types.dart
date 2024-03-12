import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String username,
    required int points
  }) = _Player;

  factory Player.fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}

/// Messages
enum MessageType {
  adminReq,
  registerReq,
  registerRes,
  scoredPointsReq,
  wordsRes,
  overview,
  startGame
}

@freezed
class Message with _$Message {
  const factory Message({
    required int type,
    required String data
}) = _Message;

  factory Message.fromJson(Map<String, Object?> json) => _$MessageFromJson(json);
}

@freezed
class RegisterMessage with _$RegisterMessage {
  const factory RegisterMessage({
    required String username,
  }) = _RegisterMessage;

  factory RegisterMessage.fromJson(Map<String, Object?> json) => _$RegisterMessageFromJson(json);
}

@freezed
class RegisterResponseMessage with _$RegisterResponseMessage {
  const factory RegisterResponseMessage({
    required bool success,
    required String id,
    required String username
  }) = _RegisterResponseMessage;

  factory RegisterResponseMessage.fromJson(Map<String, Object?> json) => _$RegisterResponseMessageFromJson(json);
}

@freezed
class ScoredPointsMessage with _$ScoredPointsMessage {
  const factory ScoredPointsMessage({
    required String id,
    required int points
  }) = _ScoredPointsMessage;

  factory ScoredPointsMessage.fromJson(Map<String, Object?> json) => _$ScoredPointsMessageFromJson(json);
}

@freezed
class WordsMessage with _$WordsMessage {
  const factory WordsMessage({
    required List<String> words,
    required int minutes
  }) = _WordsMessage;

  factory WordsMessage.fromJson(Map<String, Object?> json) => _$WordsMessageFromJson(json);
}

@freezed
class StartGameMessage with _$StartGameMessage {
  const factory StartGameMessage({
    required int minutes
  }) = _StartGameMessage;

  factory StartGameMessage.fromJson(Map<String, Object?> json) => _$StartGameMessageFromJson(json);
}

@freezed
class OverviewMessage with _$OverviewMessage {
  const factory OverviewMessage({
    required List<Player> players
  }) = _OverviewMessage;

  factory OverviewMessage.fromJson(Map<String, Object?> json) => _$OverviewMessageFromJson(json);
}

/// Cubit Stuff

@freezed
class KidsState with _$KidsState {

  static const KidsState initialState = KidsState(id: "", username: "", points: 0, secondsLeft: 0, currentWord: "", currentText: "");

  const factory KidsState({
    required String id,
    required String username,
    required int points,
    required int secondsLeft,
    
    required String currentWord,
    required String currentText
  }) = _KidsState;
}

enum GameMode {
  single,
  groups,
  together
}

@freezed
class AdminState with _$AdminState {

  static const AdminState initialState = AdminState(players: [], secondsLeft: 0, mode: GameMode.single, groupCount: 2, memberships: {});

  const factory AdminState({
    required List<Player> players,
    required int secondsLeft,
    required GameMode mode,
    required int groupCount,
    required Map<String, int> memberships
  }) = _AdminState;
}