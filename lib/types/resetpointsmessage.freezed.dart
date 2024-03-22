// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpointsmessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPointsMessage _$ResetPointsMessageFromJson(Map<String, dynamic> json) {
  return _ResetPointsMessage.fromJson(json);
}

/// @nodoc
mixin _$ResetPointsMessage {
  int get pin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPointsMessageCopyWith<ResetPointsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPointsMessageCopyWith<$Res> {
  factory $ResetPointsMessageCopyWith(
          ResetPointsMessage value, $Res Function(ResetPointsMessage) then) =
      _$ResetPointsMessageCopyWithImpl<$Res, ResetPointsMessage>;
  @useResult
  $Res call({int pin});
}

/// @nodoc
class _$ResetPointsMessageCopyWithImpl<$Res, $Val extends ResetPointsMessage>
    implements $ResetPointsMessageCopyWith<$Res> {
  _$ResetPointsMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$ResetPointsMessageImplCopyWith<$Res>
    implements $ResetPointsMessageCopyWith<$Res> {
  factory _$$ResetPointsMessageImplCopyWith(_$ResetPointsMessageImpl value,
          $Res Function(_$ResetPointsMessageImpl) then) =
      __$$ResetPointsMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin});
}

/// @nodoc
class __$$ResetPointsMessageImplCopyWithImpl<$Res>
    extends _$ResetPointsMessageCopyWithImpl<$Res, _$ResetPointsMessageImpl>
    implements _$$ResetPointsMessageImplCopyWith<$Res> {
  __$$ResetPointsMessageImplCopyWithImpl(_$ResetPointsMessageImpl _value,
      $Res Function(_$ResetPointsMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$ResetPointsMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPointsMessageImpl implements _ResetPointsMessage {
  _$ResetPointsMessageImpl({required this.pin});

  factory _$ResetPointsMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPointsMessageImplFromJson(json);

  @override
  final int pin;

  @override
  String toString() {
    return 'ResetPointsMessage(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPointsMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPointsMessageImplCopyWith<_$ResetPointsMessageImpl> get copyWith =>
      __$$ResetPointsMessageImplCopyWithImpl<_$ResetPointsMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPointsMessageImplToJson(
      this,
    );
  }
}

abstract class _ResetPointsMessage implements ResetPointsMessage {
  factory _ResetPointsMessage({required final int pin}) =
      _$ResetPointsMessageImpl;

  factory _ResetPointsMessage.fromJson(Map<String, dynamic> json) =
      _$ResetPointsMessageImpl.fromJson;

  @override
  int get pin;
  @override
  @JsonKey(ignore: true)
  _$$ResetPointsMessageImplCopyWith<_$ResetPointsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
