// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reconnectmessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReconnectMessage _$ReconnectMessageFromJson(Map<String, dynamic> json) {
  return _ReconnectMessage.fromJson(json);
}

/// @nodoc
mixin _$ReconnectMessage {
  int get pin => throw _privateConstructorUsedError;
  String get oldUserId => throw _privateConstructorUsedError;
  bool get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconnectMessageCopyWith<ReconnectMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconnectMessageCopyWith<$Res> {
  factory $ReconnectMessageCopyWith(
          ReconnectMessage value, $Res Function(ReconnectMessage) then) =
      _$ReconnectMessageCopyWithImpl<$Res, ReconnectMessage>;
  @useResult
  $Res call({int pin, String oldUserId, bool teacher});
}

/// @nodoc
class _$ReconnectMessageCopyWithImpl<$Res, $Val extends ReconnectMessage>
    implements $ReconnectMessageCopyWith<$Res> {
  _$ReconnectMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? oldUserId = null,
    Object? teacher = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      oldUserId: null == oldUserId
          ? _value.oldUserId
          : oldUserId // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReconnectMessageImplCopyWith<$Res>
    implements $ReconnectMessageCopyWith<$Res> {
  factory _$$ReconnectMessageImplCopyWith(_$ReconnectMessageImpl value,
          $Res Function(_$ReconnectMessageImpl) then) =
      __$$ReconnectMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, String oldUserId, bool teacher});
}

/// @nodoc
class __$$ReconnectMessageImplCopyWithImpl<$Res>
    extends _$ReconnectMessageCopyWithImpl<$Res, _$ReconnectMessageImpl>
    implements _$$ReconnectMessageImplCopyWith<$Res> {
  __$$ReconnectMessageImplCopyWithImpl(_$ReconnectMessageImpl _value,
      $Res Function(_$ReconnectMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? oldUserId = null,
    Object? teacher = null,
  }) {
    return _then(_$ReconnectMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      oldUserId: null == oldUserId
          ? _value.oldUserId
          : oldUserId // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReconnectMessageImpl implements _ReconnectMessage {
  _$ReconnectMessageImpl(
      {required this.pin, required this.oldUserId, required this.teacher});

  factory _$ReconnectMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReconnectMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final String oldUserId;
  @override
  final bool teacher;

  @override
  String toString() {
    return 'ReconnectMessage(pin: $pin, oldUserId: $oldUserId, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReconnectMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.oldUserId, oldUserId) ||
                other.oldUserId == oldUserId) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, oldUserId, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReconnectMessageImplCopyWith<_$ReconnectMessageImpl> get copyWith =>
      __$$ReconnectMessageImplCopyWithImpl<_$ReconnectMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReconnectMessageImplToJson(
      this,
    );
  }
}

abstract class _ReconnectMessage implements ReconnectMessage {
  factory _ReconnectMessage(
      {required final int pin,
      required final String oldUserId,
      required final bool teacher}) = _$ReconnectMessageImpl;

  factory _ReconnectMessage.fromJson(Map<String, dynamic> json) =
      _$ReconnectMessageImpl.fromJson;

  @override
  int get pin;
  @override
  String get oldUserId;
  @override
  bool get teacher;
  @override
  @JsonKey(ignore: true)
  _$$ReconnectMessageImplCopyWith<_$ReconnectMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
