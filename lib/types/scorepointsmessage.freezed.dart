// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scorepointsmessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScorePointsMessage _$ScorePointsMessageFromJson(Map<String, dynamic> json) {
  return _ScorePointsMessage.fromJson(json);
}

/// @nodoc
mixin _$ScorePointsMessage {
  int get pin => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScorePointsMessageCopyWith<ScorePointsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorePointsMessageCopyWith<$Res> {
  factory $ScorePointsMessageCopyWith(
          ScorePointsMessage value, $Res Function(ScorePointsMessage) then) =
      _$ScorePointsMessageCopyWithImpl<$Res, ScorePointsMessage>;
  @useResult
  $Res call({int pin, int points});
}

/// @nodoc
class _$ScorePointsMessageCopyWithImpl<$Res, $Val extends ScorePointsMessage>
    implements $ScorePointsMessageCopyWith<$Res> {
  _$ScorePointsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScorePointsMessageImplCopyWith<$Res>
    implements $ScorePointsMessageCopyWith<$Res> {
  factory _$$ScorePointsMessageImplCopyWith(_$ScorePointsMessageImpl value,
          $Res Function(_$ScorePointsMessageImpl) then) =
      __$$ScorePointsMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, int points});
}

/// @nodoc
class __$$ScorePointsMessageImplCopyWithImpl<$Res>
    extends _$ScorePointsMessageCopyWithImpl<$Res, _$ScorePointsMessageImpl>
    implements _$$ScorePointsMessageImplCopyWith<$Res> {
  __$$ScorePointsMessageImplCopyWithImpl(_$ScorePointsMessageImpl _value,
      $Res Function(_$ScorePointsMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? points = null,
  }) {
    return _then(_$ScorePointsMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorePointsMessageImpl implements _ScorePointsMessage {
  _$ScorePointsMessageImpl({required this.pin, required this.points});

  factory _$ScorePointsMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorePointsMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final int points;

  @override
  String toString() {
    return 'ScorePointsMessage(pin: $pin, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorePointsMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorePointsMessageImplCopyWith<_$ScorePointsMessageImpl> get copyWith =>
      __$$ScorePointsMessageImplCopyWithImpl<_$ScorePointsMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorePointsMessageImplToJson(
      this,
    );
  }
}

abstract class _ScorePointsMessage implements ScorePointsMessage {
  factory _ScorePointsMessage(
      {required final int pin,
      required final int points}) = _$ScorePointsMessageImpl;

  factory _ScorePointsMessage.fromJson(Map<String, dynamic> json) =
      _$ScorePointsMessageImpl.fromJson;

  @override
  int get pin;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$ScorePointsMessageImplCopyWith<_$ScorePointsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
