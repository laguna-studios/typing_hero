// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'closeroommessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CloseRoomMessage _$CloseRoomMessageFromJson(Map<String, dynamic> json) {
  return _CloseRoomMessage.fromJson(json);
}

/// @nodoc
mixin _$CloseRoomMessage {
  int get pin => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloseRoomMessageCopyWith<CloseRoomMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseRoomMessageCopyWith<$Res> {
  factory $CloseRoomMessageCopyWith(
          CloseRoomMessage value, $Res Function(CloseRoomMessage) then) =
      _$CloseRoomMessageCopyWithImpl<$Res, CloseRoomMessage>;
  @useResult
  $Res call({int pin, bool closed});
}

/// @nodoc
class _$CloseRoomMessageCopyWithImpl<$Res, $Val extends CloseRoomMessage>
    implements $CloseRoomMessageCopyWith<$Res> {
  _$CloseRoomMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? closed = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloseRoomMessageImplCopyWith<$Res>
    implements $CloseRoomMessageCopyWith<$Res> {
  factory _$$CloseRoomMessageImplCopyWith(_$CloseRoomMessageImpl value,
          $Res Function(_$CloseRoomMessageImpl) then) =
      __$$CloseRoomMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, bool closed});
}

/// @nodoc
class __$$CloseRoomMessageImplCopyWithImpl<$Res>
    extends _$CloseRoomMessageCopyWithImpl<$Res, _$CloseRoomMessageImpl>
    implements _$$CloseRoomMessageImplCopyWith<$Res> {
  __$$CloseRoomMessageImplCopyWithImpl(_$CloseRoomMessageImpl _value,
      $Res Function(_$CloseRoomMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? closed = null,
  }) {
    return _then(_$CloseRoomMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloseRoomMessageImpl implements _CloseRoomMessage {
  _$CloseRoomMessageImpl({required this.pin, required this.closed});

  factory _$CloseRoomMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloseRoomMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final bool closed;

  @override
  String toString() {
    return 'CloseRoomMessage(pin: $pin, closed: $closed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseRoomMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.closed, closed) || other.closed == closed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, closed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloseRoomMessageImplCopyWith<_$CloseRoomMessageImpl> get copyWith =>
      __$$CloseRoomMessageImplCopyWithImpl<_$CloseRoomMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloseRoomMessageImplToJson(
      this,
    );
  }
}

abstract class _CloseRoomMessage implements CloseRoomMessage {
  factory _CloseRoomMessage(
      {required final int pin,
      required final bool closed}) = _$CloseRoomMessageImpl;

  factory _CloseRoomMessage.fromJson(Map<String, dynamic> json) =
      _$CloseRoomMessageImpl.fromJson;

  @override
  int get pin;
  @override
  bool get closed;
  @override
  @JsonKey(ignore: true)
  _$$CloseRoomMessageImplCopyWith<_$CloseRoomMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
