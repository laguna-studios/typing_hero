// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enterroommessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnterRoomMessage _$EnterRoomMessageFromJson(Map<String, dynamic> json) {
  return _EnterRoomMessage.fromJson(json);
}

/// @nodoc
mixin _$EnterRoomMessage {
  int get pin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnterRoomMessageCopyWith<EnterRoomMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterRoomMessageCopyWith<$Res> {
  factory $EnterRoomMessageCopyWith(
          EnterRoomMessage value, $Res Function(EnterRoomMessage) then) =
      _$EnterRoomMessageCopyWithImpl<$Res, EnterRoomMessage>;
  @useResult
  $Res call({int pin});
}

/// @nodoc
class _$EnterRoomMessageCopyWithImpl<$Res, $Val extends EnterRoomMessage>
    implements $EnterRoomMessageCopyWith<$Res> {
  _$EnterRoomMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnterRoomMessageImplCopyWith<$Res>
    implements $EnterRoomMessageCopyWith<$Res> {
  factory _$$EnterRoomMessageImplCopyWith(_$EnterRoomMessageImpl value,
          $Res Function(_$EnterRoomMessageImpl) then) =
      __$$EnterRoomMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin});
}

/// @nodoc
class __$$EnterRoomMessageImplCopyWithImpl<$Res>
    extends _$EnterRoomMessageCopyWithImpl<$Res, _$EnterRoomMessageImpl>
    implements _$$EnterRoomMessageImplCopyWith<$Res> {
  __$$EnterRoomMessageImplCopyWithImpl(_$EnterRoomMessageImpl _value,
      $Res Function(_$EnterRoomMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$EnterRoomMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnterRoomMessageImpl implements _EnterRoomMessage {
  _$EnterRoomMessageImpl({required this.pin});

  factory _$EnterRoomMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnterRoomMessageImplFromJson(json);

  @override
  final int pin;

  @override
  String toString() {
    return 'EnterRoomMessage(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterRoomMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterRoomMessageImplCopyWith<_$EnterRoomMessageImpl> get copyWith =>
      __$$EnterRoomMessageImplCopyWithImpl<_$EnterRoomMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnterRoomMessageImplToJson(
      this,
    );
  }
}

abstract class _EnterRoomMessage implements EnterRoomMessage {
  factory _EnterRoomMessage({required final int pin}) = _$EnterRoomMessageImpl;

  factory _EnterRoomMessage.fromJson(Map<String, dynamic> json) =
      _$EnterRoomMessageImpl.fromJson;

  @override
  int get pin;
  @override
  @JsonKey(ignore: true)
  _$$EnterRoomMessageImplCopyWith<_$EnterRoomMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
