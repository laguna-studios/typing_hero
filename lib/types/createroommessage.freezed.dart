// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'createroommessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRoomMessage _$CreateRoomMessageFromJson(Map<String, dynamic> json) {
  return _CreateRoomMessage.fromJson(json);
}

/// @nodoc
mixin _$CreateRoomMessage {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomMessageCopyWith<$Res> {
  factory $CreateRoomMessageCopyWith(
          CreateRoomMessage value, $Res Function(CreateRoomMessage) then) =
      _$CreateRoomMessageCopyWithImpl<$Res, CreateRoomMessage>;
}

/// @nodoc
class _$CreateRoomMessageCopyWithImpl<$Res, $Val extends CreateRoomMessage>
    implements $CreateRoomMessageCopyWith<$Res> {
  _$CreateRoomMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateRoomMessageImplCopyWith<$Res> {
  factory _$$CreateRoomMessageImplCopyWith(_$CreateRoomMessageImpl value,
          $Res Function(_$CreateRoomMessageImpl) then) =
      __$$CreateRoomMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRoomMessageImplCopyWithImpl<$Res>
    extends _$CreateRoomMessageCopyWithImpl<$Res, _$CreateRoomMessageImpl>
    implements _$$CreateRoomMessageImplCopyWith<$Res> {
  __$$CreateRoomMessageImplCopyWithImpl(_$CreateRoomMessageImpl _value,
      $Res Function(_$CreateRoomMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CreateRoomMessageImpl implements _CreateRoomMessage {
  _$CreateRoomMessageImpl();

  factory _$CreateRoomMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRoomMessageImplFromJson(json);

  @override
  String toString() {
    return 'CreateRoomMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateRoomMessageImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRoomMessageImplToJson(
      this,
    );
  }
}

abstract class _CreateRoomMessage implements CreateRoomMessage {
  factory _CreateRoomMessage() = _$CreateRoomMessageImpl;

  factory _CreateRoomMessage.fromJson(Map<String, dynamic> json) =
      _$CreateRoomMessageImpl.fromJson;
}
