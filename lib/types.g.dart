// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameRoomImpl _$$GameRoomImplFromJson(Map<String, dynamic> json) =>
    _$GameRoomImpl(
      ownerId: json['ownerId'] as String,
      pin: json['pin'] as int,
      open: json['open'] as bool,
      players: (json['players'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameRoomImplToJson(_$GameRoomImpl instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'pin': instance.pin,
      'open': instance.open,
      'players': instance.players,
      'game': instance.game,
    };

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
      startTime: json['startTime'] as int,
      endTime: json['endTime'] as int,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'words': instance.words,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      points: json['points'] as int,
      gameRoomPin: json['gameRoomPin'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'points': instance.points,
      'gameRoomPin': instance.gameRoomPin,
    };

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      currentScreen: json['currentScreen'] as int,
      error: json['error'] as String,
      wordIndex: json['wordIndex'] as int,
      typing: json['typing'] as String,
      secondsLeft: json['secondsLeft'] as int,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
      gameRoom: json['gameRoom'] == null
          ? null
          : GameRoom.fromJson(json['gameRoom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'currentScreen': instance.currentScreen,
      'error': instance.error,
      'wordIndex': instance.wordIndex,
      'typing': instance.typing,
      'secondsLeft': instance.secondsLeft,
      'user': instance.user,
      'game': instance.game,
      'gameRoom': instance.gameRoom,
    };

_$TeacherStateImpl _$$TeacherStateImplFromJson(Map<String, dynamic> json) =>
    _$TeacherStateImpl(
      gameMode: json['gameMode'] as int,
      teamCount: json['teamCount'] as int,
      membership: Map<String, int>.from(json['membership'] as Map),
    );

Map<String, dynamic> _$$TeacherStateImplToJson(_$TeacherStateImpl instance) =>
    <String, dynamic>{
      'gameMode': instance.gameMode,
      'teamCount': instance.teamCount,
      'membership': instance.membership,
    };
