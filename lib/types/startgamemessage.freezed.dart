// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'startgamemessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartGameMessage _$StartGameMessageFromJson(Map<String, dynamic> json) {
  return _StartGameMessage.fromJson(json);
}

/// @nodoc
mixin _$StartGameMessage {
  int get pin => throw _privateConstructorUsedError;
  Game get game => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartGameMessageCopyWith<StartGameMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGameMessageCopyWith<$Res> {
  factory $StartGameMessageCopyWith(
          StartGameMessage value, $Res Function(StartGameMessage) then) =
      _$StartGameMessageCopyWithImpl<$Res, StartGameMessage>;
  @useResult
  $Res call({int pin, Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$StartGameMessageCopyWithImpl<$Res, $Val extends StartGameMessage>
    implements $StartGameMessageCopyWith<$Res> {
  _$StartGameMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? game = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartGameMessageImplCopyWith<$Res>
    implements $StartGameMessageCopyWith<$Res> {
  factory _$$StartGameMessageImplCopyWith(_$StartGameMessageImpl value,
          $Res Function(_$StartGameMessageImpl) then) =
      __$$StartGameMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, Game game});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$StartGameMessageImplCopyWithImpl<$Res>
    extends _$StartGameMessageCopyWithImpl<$Res, _$StartGameMessageImpl>
    implements _$$StartGameMessageImplCopyWith<$Res> {
  __$$StartGameMessageImplCopyWithImpl(_$StartGameMessageImpl _value,
      $Res Function(_$StartGameMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? game = null,
  }) {
    return _then(_$StartGameMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartGameMessageImpl implements _StartGameMessage {
  _$StartGameMessageImpl({required this.pin, required this.game});

  factory _$StartGameMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartGameMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final Game game;

  @override
  String toString() {
    return 'StartGameMessage(pin: $pin, game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGameMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.game, game) || other.game == game));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartGameMessageImplCopyWith<_$StartGameMessageImpl> get copyWith =>
      __$$StartGameMessageImplCopyWithImpl<_$StartGameMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartGameMessageImplToJson(
      this,
    );
  }
}

abstract class _StartGameMessage implements StartGameMessage {
  factory _StartGameMessage(
      {required final int pin,
      required final Game game}) = _$StartGameMessageImpl;

  factory _StartGameMessage.fromJson(Map<String, dynamic> json) =
      _$StartGameMessageImpl.fromJson;

  @override
  int get pin;
  @override
  Game get game;
  @override
  @JsonKey(ignore: true)
  _$$StartGameMessageImplCopyWith<_$StartGameMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
