// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saveusernamemessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveUsernameMessage _$SaveUsernameMessageFromJson(Map<String, dynamic> json) {
  return _SaveUsernameMessage.fromJson(json);
}

/// @nodoc
mixin _$SaveUsernameMessage {
  int get pin => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveUsernameMessageCopyWith<SaveUsernameMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUsernameMessageCopyWith<$Res> {
  factory $SaveUsernameMessageCopyWith(
          SaveUsernameMessage value, $Res Function(SaveUsernameMessage) then) =
      _$SaveUsernameMessageCopyWithImpl<$Res, SaveUsernameMessage>;
  @useResult
  $Res call({int pin, String username});
}

/// @nodoc
class _$SaveUsernameMessageCopyWithImpl<$Res, $Val extends SaveUsernameMessage>
    implements $SaveUsernameMessageCopyWith<$Res> {
  _$SaveUsernameMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveUsernameMessageImplCopyWith<$Res>
    implements $SaveUsernameMessageCopyWith<$Res> {
  factory _$$SaveUsernameMessageImplCopyWith(_$SaveUsernameMessageImpl value,
          $Res Function(_$SaveUsernameMessageImpl) then) =
      __$$SaveUsernameMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pin, String username});
}

/// @nodoc
class __$$SaveUsernameMessageImplCopyWithImpl<$Res>
    extends _$SaveUsernameMessageCopyWithImpl<$Res, _$SaveUsernameMessageImpl>
    implements _$$SaveUsernameMessageImplCopyWith<$Res> {
  __$$SaveUsernameMessageImplCopyWithImpl(_$SaveUsernameMessageImpl _value,
      $Res Function(_$SaveUsernameMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? username = null,
  }) {
    return _then(_$SaveUsernameMessageImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveUsernameMessageImpl implements _SaveUsernameMessage {
  _$SaveUsernameMessageImpl({required this.pin, required this.username});

  factory _$SaveUsernameMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveUsernameMessageImplFromJson(json);

  @override
  final int pin;
  @override
  final String username;

  @override
  String toString() {
    return 'SaveUsernameMessage(pin: $pin, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUsernameMessageImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUsernameMessageImplCopyWith<_$SaveUsernameMessageImpl> get copyWith =>
      __$$SaveUsernameMessageImplCopyWithImpl<_$SaveUsernameMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveUsernameMessageImplToJson(
      this,
    );
  }
}

abstract class _SaveUsernameMessage implements SaveUsernameMessage {
  factory _SaveUsernameMessage(
      {required final int pin,
      required final String username}) = _$SaveUsernameMessageImpl;

  factory _SaveUsernameMessage.fromJson(Map<String, dynamic> json) =
      _$SaveUsernameMessageImpl.fromJson;

  @override
  int get pin;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$SaveUsernameMessageImplCopyWith<_$SaveUsernameMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
