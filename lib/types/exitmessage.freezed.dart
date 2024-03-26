// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exitmessage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExitMessage _$ExitMessageFromJson(Map<String, dynamic> json) {
  return _ExitMessage.fromJson(json);
}

/// @nodoc
mixin _$ExitMessage {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExitMessageCopyWith<$Res> {
  factory $ExitMessageCopyWith(
          ExitMessage value, $Res Function(ExitMessage) then) =
      _$ExitMessageCopyWithImpl<$Res, ExitMessage>;
}

/// @nodoc
class _$ExitMessageCopyWithImpl<$Res, $Val extends ExitMessage>
    implements $ExitMessageCopyWith<$Res> {
  _$ExitMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExitMessageImplCopyWith<$Res> {
  factory _$$ExitMessageImplCopyWith(
          _$ExitMessageImpl value, $Res Function(_$ExitMessageImpl) then) =
      __$$ExitMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitMessageImplCopyWithImpl<$Res>
    extends _$ExitMessageCopyWithImpl<$Res, _$ExitMessageImpl>
    implements _$$ExitMessageImplCopyWith<$Res> {
  __$$ExitMessageImplCopyWithImpl(
      _$ExitMessageImpl _value, $Res Function(_$ExitMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ExitMessageImpl implements _ExitMessage {
  _$ExitMessageImpl();

  factory _$ExitMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExitMessageImplFromJson(json);

  @override
  String toString() {
    return 'ExitMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitMessageImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ExitMessageImplToJson(
      this,
    );
  }
}

abstract class _ExitMessage implements ExitMessage {
  factory _ExitMessage() = _$ExitMessageImpl;

  factory _ExitMessage.fromJson(Map<String, dynamic> json) =
      _$ExitMessageImpl.fromJson;
}
