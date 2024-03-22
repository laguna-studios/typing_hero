// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startgamemessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartGameMessageImpl _$$StartGameMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$StartGameMessageImpl(
      pin: json['pin'] as int,
      game: Game.fromJson(json['game'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StartGameMessageImplToJson(
        _$StartGameMessageImpl instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'game': instance.game,
    };
