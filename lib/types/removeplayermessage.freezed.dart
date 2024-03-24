// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'removeplayermessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemovePlayerMessage _$RemovePlayerMessageFromJson(Map<String, dynamic> json) {
  return _RemovePlayerMessage.fromJson(json);
}

/// @nodoc
mixin _$RemovePlayerMessage {
  int get pin => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemovePlayerMessageCopyWith<RemovePlayerMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemovePlayerMessageCopyWith<$Res> {
  factory $RemovePlayerMessageCopyWith(
          RemovePlayerMessage value, $Res Function(RemovePlayerMessage) then) =
      _$RemovePlayerMessageCopyWithImpl<$Res, RemovePlayerMessage>;
  @useResult
  $Res call({int pin, String userId});
}

/// @nodoc
class _$RemovePlayerMessageCopyWithImpl<$Res, $Val extends RemovePlayerMessage>
    implements $RemovePlayerMessageCopyWith<$Res> {
  _$RemovePlayerMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemovePlayerMessageImplCopyWith<$Res>
    implements $RemovePlayerMessageCopyWith<$Res> {
  factory _$$RemovePlayerMessageImplCopyWith(_$RemovePlayerMessageImpl value,
          $Res Function(_$RemovePlayerMessageImpl) then) =
      __$$RemovePlayerMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, String userId});
}

/// @nodoc
class __$$RemovePlayerMessageImplCopyWithImpl<$Res>
    extends _$RemovePlayerMessageCopyWithImpl<$Res, _$RemovePlayerMessageImpl>
    implements _$$RemovePlayerMessageImplCopyWith<$Res> {
  __$$RemovePlayerMessageImplCopyWithImpl(_$RemovePlayerMessageImpl _value,
      $Res Function(_$RemovePlayerMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? userId = null,
  }) {
    return _then(_$RemovePlayerMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemovePlayerMessageImpl implements _RemovePlayerMessage {
  _$RemovePlayerMessageImpl({required this.pin, required this.userId});

  factory _$RemovePlayerMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemovePlayerMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final String userId;

  @override
  String toString() {
    return 'RemovePlayerMessage(pin: $pin, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePlayerMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovePlayerMessageImplCopyWith<_$RemovePlayerMessageImpl> get copyWith =>
      __$$RemovePlayerMessageImplCopyWithImpl<_$RemovePlayerMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemovePlayerMessageImplToJson(
      this,
    );
  }
}

abstract class _RemovePlayerMessage implements RemovePlayerMessage {
  factory _RemovePlayerMessage(
      {required final int pin,
      required final String userId}) = _$RemovePlayerMessageImpl;

  factory _RemovePlayerMessage.fromJson(Map<String, dynamic> json) =
      _$RemovePlayerMessageImpl.fromJson;

  @override
  int get pin;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$RemovePlayerMessageImplCopyWith<_$RemovePlayerMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
