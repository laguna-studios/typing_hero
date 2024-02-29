// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      points: json['points'] as int,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'points': instance.points,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      type: json['type'] as int,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

_$RegisterMessageImpl _$$RegisterMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterMessageImpl(
      username: json['username'] as String,
    );

Map<String, dynamic> _$$RegisterMessageImplToJson(
        _$RegisterMessageImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

_$RegisterResponseMessageImpl _$$RegisterResponseMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseMessageImpl(
      success: json['success'] as bool,
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$RegisterResponseMessageImplToJson(
        _$RegisterResponseMessageImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'id': instance.id,
      'username': instance.username,
    };

_$ScoredPointsMessageImpl _$$ScoredPointsMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ScoredPointsMessageImpl(
      id: json['id'] as String,
      points: json['points'] as int,
    );

Map<String, dynamic> _$$ScoredPointsMessageImplToJson(
        _$ScoredPointsMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
    };

_$WordsMessageImpl _$$WordsMessageImplFromJson(Map<String, dynamic> json) =>
    _$WordsMessageImpl(
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
      minutes: json['minutes'] as int,
    );

Map<String, dynamic> _$$WordsMessageImplToJson(_$WordsMessageImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
      'minutes': instance.minutes,
    };

_$StartGameMessageImpl _$$StartGameMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$StartGameMessageImpl(
      minutes: json['minutes'] as int,
    );

Map<String, dynamic> _$$StartGameMessageImplToJson(
        _$StartGameMessageImpl instance) =>
    <String, dynamic>{
      'minutes': instance.minutes,
    };

_$OverviewMessageImpl _$$OverviewMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$OverviewMessageImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OverviewMessageImplToJson(
        _$OverviewMessageImpl instance) =>
    <String, dynamic>{
      'players': instance.players,
    };
