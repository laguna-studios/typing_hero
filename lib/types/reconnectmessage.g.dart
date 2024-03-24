// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconnectmessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReconnectMessageImpl _$$ReconnectMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ReconnectMessageImpl(
      pin: json['pin'] as int,
      oldUserId: json['oldUserId'] as String,
      teacher: json['teacher'] as bool,
    );

Map<String, dynamic> _$$ReconnectMessageImplToJson(
        _$ReconnectMessageImpl instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'oldUserId': instance.oldUserId,
      'teacher': instance.teacher,
    };
