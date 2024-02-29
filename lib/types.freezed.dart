// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({String id, String username, int points});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, int points});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
  }) {
    return _then(_$PlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {required this.id, required this.username, required this.points});

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final int points;

  @override
  String toString() {
    return 'Player(id: $id, username: $username, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {required final String id,
      required final String username,
      required final int points}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int get type => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({int type, String data});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, String data});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$MessageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({required this.type, required this.data});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int type;
  @override
  final String data;

  @override
  String toString() {
    return 'Message(type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final int type, required final String data}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int get type;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterMessage _$RegisterMessageFromJson(Map<String, dynamic> json) {
  return _RegisterMessage.fromJson(json);
}

/// @nodoc
mixin _$RegisterMessage {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterMessageCopyWith<RegisterMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterMessageCopyWith<$Res> {
  factory $RegisterMessageCopyWith(
          RegisterMessage value, $Res Function(RegisterMessage) then) =
      _$RegisterMessageCopyWithImpl<$Res, RegisterMessage>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$RegisterMessageCopyWithImpl<$Res, $Val extends RegisterMessage>
    implements $RegisterMessageCopyWith<$Res> {
  _$RegisterMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterMessageImplCopyWith<$Res>
    implements $RegisterMessageCopyWith<$Res> {
  factory _$$RegisterMessageImplCopyWith(_$RegisterMessageImpl value,
          $Res Function(_$RegisterMessageImpl) then) =
      __$$RegisterMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$RegisterMessageImplCopyWithImpl<$Res>
    extends _$RegisterMessageCopyWithImpl<$Res, _$RegisterMessageImpl>
    implements _$$RegisterMessageImplCopyWith<$Res> {
  __$$RegisterMessageImplCopyWithImpl(
      _$RegisterMessageImpl _value, $Res Function(_$RegisterMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$RegisterMessageImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterMessageImpl implements _RegisterMessage {
  const _$RegisterMessageImpl({required this.username});

  factory _$RegisterMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterMessageImplFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'RegisterMessage(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterMessageImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterMessageImplCopyWith<_$RegisterMessageImpl> get copyWith =>
      __$$RegisterMessageImplCopyWithImpl<_$RegisterMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterMessageImplToJson(
      this,
    );
  }
}

abstract class _RegisterMessage implements RegisterMessage {
  const factory _RegisterMessage({required final String username}) =
      _$RegisterMessageImpl;

  factory _RegisterMessage.fromJson(Map<String, dynamic> json) =
      _$RegisterMessageImpl.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$RegisterMessageImplCopyWith<_$RegisterMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterResponseMessage _$RegisterResponseMessageFromJson(
    Map<String, dynamic> json) {
  return _RegisterResponseMessage.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponseMessage {
  bool get success => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseMessageCopyWith<RegisterResponseMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseMessageCopyWith<$Res> {
  factory $RegisterResponseMessageCopyWith(RegisterResponseMessage value,
          $Res Function(RegisterResponseMessage) then) =
      _$RegisterResponseMessageCopyWithImpl<$Res, RegisterResponseMessage>;
  @useResult
  $Res call({bool success, String id, String username});
}

/// @nodoc
class _$RegisterResponseMessageCopyWithImpl<$Res,
        $Val extends RegisterResponseMessage>
    implements $RegisterResponseMessageCopyWith<$Res> {
  _$RegisterResponseMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterResponseMessageImplCopyWith<$Res>
    implements $RegisterResponseMessageCopyWith<$Res> {
  factory _$$RegisterResponseMessageImplCopyWith(
          _$RegisterResponseMessageImpl value,
          $Res Function(_$RegisterResponseMessageImpl) then) =
      __$$RegisterResponseMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String id, String username});
}

/// @nodoc
class __$$RegisterResponseMessageImplCopyWithImpl<$Res>
    extends _$RegisterResponseMessageCopyWithImpl<$Res,
        _$RegisterResponseMessageImpl>
    implements _$$RegisterResponseMessageImplCopyWith<$Res> {
  __$$RegisterResponseMessageImplCopyWithImpl(
      _$RegisterResponseMessageImpl _value,
      $Res Function(_$RegisterResponseMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$RegisterResponseMessageImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseMessageImpl implements _RegisterResponseMessage {
  const _$RegisterResponseMessageImpl(
      {required this.success, required this.id, required this.username});

  factory _$RegisterResponseMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseMessageImplFromJson(json);

  @override
  final bool success;
  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'RegisterResponseMessage(success: $success, id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseMessageImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterResponseMessageImplCopyWith<_$RegisterResponseMessageImpl>
      get copyWith => __$$RegisterResponseMessageImplCopyWithImpl<
          _$RegisterResponseMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseMessageImplToJson(
      this,
    );
  }
}

abstract class _RegisterResponseMessage implements RegisterResponseMessage {
  const factory _RegisterResponseMessage(
      {required final bool success,
      required final String id,
      required final String username}) = _$RegisterResponseMessageImpl;

  factory _RegisterResponseMessage.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseMessageImpl.fromJson;

  @override
  bool get success;
  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$RegisterResponseMessageImplCopyWith<_$RegisterResponseMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScoredPointsMessage _$ScoredPointsMessageFromJson(Map<String, dynamic> json) {
  return _ScoredPointsMessage.fromJson(json);
}

/// @nodoc
mixin _$ScoredPointsMessage {
  String get id => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoredPointsMessageCopyWith<ScoredPointsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoredPointsMessageCopyWith<$Res> {
  factory $ScoredPointsMessageCopyWith(
          ScoredPointsMessage value, $Res Function(ScoredPointsMessage) then) =
      _$ScoredPointsMessageCopyWithImpl<$Res, ScoredPointsMessage>;
  @useResult
  $Res call({String id, int points});
}

/// @nodoc
class _$ScoredPointsMessageCopyWithImpl<$Res, $Val extends ScoredPointsMessage>
    implements $ScoredPointsMessageCopyWith<$Res> {
  _$ScoredPointsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoredPointsMessageImplCopyWith<$Res>
    implements $ScoredPointsMessageCopyWith<$Res> {
  factory _$$ScoredPointsMessageImplCopyWith(_$ScoredPointsMessageImpl value,
          $Res Function(_$ScoredPointsMessageImpl) then) =
      __$$ScoredPointsMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int points});
}

/// @nodoc
class __$$ScoredPointsMessageImplCopyWithImpl<$Res>
    extends _$ScoredPointsMessageCopyWithImpl<$Res, _$ScoredPointsMessageImpl>
    implements _$$ScoredPointsMessageImplCopyWith<$Res> {
  __$$ScoredPointsMessageImplCopyWithImpl(_$ScoredPointsMessageImpl _value,
      $Res Function(_$ScoredPointsMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
  }) {
    return _then(_$ScoredPointsMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoredPointsMessageImpl implements _ScoredPointsMessage {
  const _$ScoredPointsMessageImpl({required this.id, required this.points});

  factory _$ScoredPointsMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoredPointsMessageImplFromJson(json);

  @override
  final String id;
  @override
  final int points;

  @override
  String toString() {
    return 'ScoredPointsMessage(id: $id, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoredPointsMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoredPointsMessageImplCopyWith<_$ScoredPointsMessageImpl> get copyWith =>
      __$$ScoredPointsMessageImplCopyWithImpl<_$ScoredPointsMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoredPointsMessageImplToJson(
      this,
    );
  }
}

abstract class _ScoredPointsMessage implements ScoredPointsMessage {
  const factory _ScoredPointsMessage(
      {required final String id,
      required final int points}) = _$ScoredPointsMessageImpl;

  factory _ScoredPointsMessage.fromJson(Map<String, dynamic> json) =
      _$ScoredPointsMessageImpl.fromJson;

  @override
  String get id;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$ScoredPointsMessageImplCopyWith<_$ScoredPointsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordsMessage _$WordsMessageFromJson(Map<String, dynamic> json) {
  return _WordsMessage.fromJson(json);
}

/// @nodoc
mixin _$WordsMessage {
  List<String> get words => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordsMessageCopyWith<WordsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsMessageCopyWith<$Res> {
  factory $WordsMessageCopyWith(
          WordsMessage value, $Res Function(WordsMessage) then) =
      _$WordsMessageCopyWithImpl<$Res, WordsMessage>;
  @useResult
  $Res call({List<String> words, int minutes});
}

/// @nodoc
class _$WordsMessageCopyWithImpl<$Res, $Val extends WordsMessage>
    implements $WordsMessageCopyWith<$Res> {
  _$WordsMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordsMessageImplCopyWith<$Res>
    implements $WordsMessageCopyWith<$Res> {
  factory _$$WordsMessageImplCopyWith(
          _$WordsMessageImpl value, $Res Function(_$WordsMessageImpl) then) =
      __$$WordsMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> words, int minutes});
}

/// @nodoc
class __$$WordsMessageImplCopyWithImpl<$Res>
    extends _$WordsMessageCopyWithImpl<$Res, _$WordsMessageImpl>
    implements _$$WordsMessageImplCopyWith<$Res> {
  __$$WordsMessageImplCopyWithImpl(
      _$WordsMessageImpl _value, $Res Function(_$WordsMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? minutes = null,
  }) {
    return _then(_$WordsMessageImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordsMessageImpl implements _WordsMessage {
  const _$WordsMessageImpl(
      {required final List<String> words, required this.minutes})
      : _words = words;

  factory _$WordsMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordsMessageImplFromJson(json);

  final List<String> _words;
  @override
  List<String> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  final int minutes;

  @override
  String toString() {
    return 'WordsMessage(words: $words, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsMessageImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_words), minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsMessageImplCopyWith<_$WordsMessageImpl> get copyWith =>
      __$$WordsMessageImplCopyWithImpl<_$WordsMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordsMessageImplToJson(
      this,
    );
  }
}

abstract class _WordsMessage implements WordsMessage {
  const factory _WordsMessage(
      {required final List<String> words,
      required final int minutes}) = _$WordsMessageImpl;

  factory _WordsMessage.fromJson(Map<String, dynamic> json) =
      _$WordsMessageImpl.fromJson;

  @override
  List<String> get words;
  @override
  int get minutes;
  @override
  @JsonKey(ignore: true)
  _$$WordsMessageImplCopyWith<_$WordsMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StartGameMessage _$StartGameMessageFromJson(Map<String, dynamic> json) {
  return _StartGameMessage.fromJson(json);
}

/// @nodoc
mixin _$StartGameMessage {
  int get minutes => throw _privateConstructorUsedError;

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
  $Res call({int minutes});
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
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int minutes});
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
    Object? minutes = null,
  }) {
    return _then(_$StartGameMessageImpl(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartGameMessageImpl implements _StartGameMessage {
  const _$StartGameMessageImpl({required this.minutes});

  factory _$StartGameMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartGameMessageImplFromJson(json);

  @override
  final int minutes;

  @override
  String toString() {
    return 'StartGameMessage(minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGameMessageImpl &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minutes);

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
  const factory _StartGameMessage({required final int minutes}) =
      _$StartGameMessageImpl;

  factory _StartGameMessage.fromJson(Map<String, dynamic> json) =
      _$StartGameMessageImpl.fromJson;

  @override
  int get minutes;
  @override
  @JsonKey(ignore: true)
  _$$StartGameMessageImplCopyWith<_$StartGameMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverviewMessage _$OverviewMessageFromJson(Map<String, dynamic> json) {
  return _OverviewMessage.fromJson(json);
}

/// @nodoc
mixin _$OverviewMessage {
  List<Player> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewMessageCopyWith<OverviewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewMessageCopyWith<$Res> {
  factory $OverviewMessageCopyWith(
          OverviewMessage value, $Res Function(OverviewMessage) then) =
      _$OverviewMessageCopyWithImpl<$Res, OverviewMessage>;
  @useResult
  $Res call({List<Player> players});
}

/// @nodoc
class _$OverviewMessageCopyWithImpl<$Res, $Val extends OverviewMessage>
    implements $OverviewMessageCopyWith<$Res> {
  _$OverviewMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewMessageImplCopyWith<$Res>
    implements $OverviewMessageCopyWith<$Res> {
  factory _$$OverviewMessageImplCopyWith(_$OverviewMessageImpl value,
          $Res Function(_$OverviewMessageImpl) then) =
      __$$OverviewMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player> players});
}

/// @nodoc
class __$$OverviewMessageImplCopyWithImpl<$Res>
    extends _$OverviewMessageCopyWithImpl<$Res, _$OverviewMessageImpl>
    implements _$$OverviewMessageImplCopyWith<$Res> {
  __$$OverviewMessageImplCopyWithImpl(
      _$OverviewMessageImpl _value, $Res Function(_$OverviewMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_$OverviewMessageImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewMessageImpl implements _OverviewMessage {
  const _$OverviewMessageImpl({required final List<Player> players})
      : _players = players;

  factory _$OverviewMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewMessageImplFromJson(json);

  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'OverviewMessage(players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewMessageImpl &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewMessageImplCopyWith<_$OverviewMessageImpl> get copyWith =>
      __$$OverviewMessageImplCopyWithImpl<_$OverviewMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewMessageImplToJson(
      this,
    );
  }
}

abstract class _OverviewMessage implements OverviewMessage {
  const factory _OverviewMessage({required final List<Player> players}) =
      _$OverviewMessageImpl;

  factory _OverviewMessage.fromJson(Map<String, dynamic> json) =
      _$OverviewMessageImpl.fromJson;

  @override
  List<Player> get players;
  @override
  @JsonKey(ignore: true)
  _$$OverviewMessageImplCopyWith<_$OverviewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KidsState {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get secondsLeft => throw _privateConstructorUsedError;
  String get currentWord => throw _privateConstructorUsedError;
  String get currentText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KidsStateCopyWith<KidsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KidsStateCopyWith<$Res> {
  factory $KidsStateCopyWith(KidsState value, $Res Function(KidsState) then) =
      _$KidsStateCopyWithImpl<$Res, KidsState>;
  @useResult
  $Res call(
      {String id,
      String username,
      int points,
      int secondsLeft,
      String currentWord,
      String currentText});
}

/// @nodoc
class _$KidsStateCopyWithImpl<$Res, $Val extends KidsState>
    implements $KidsStateCopyWith<$Res> {
  _$KidsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
    Object? secondsLeft = null,
    Object? currentWord = null,
    Object? currentText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      currentWord: null == currentWord
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as String,
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidsStateImplCopyWith<$Res>
    implements $KidsStateCopyWith<$Res> {
  factory _$$KidsStateImplCopyWith(
          _$KidsStateImpl value, $Res Function(_$KidsStateImpl) then) =
      __$$KidsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      int points,
      int secondsLeft,
      String currentWord,
      String currentText});
}

/// @nodoc
class __$$KidsStateImplCopyWithImpl<$Res>
    extends _$KidsStateCopyWithImpl<$Res, _$KidsStateImpl>
    implements _$$KidsStateImplCopyWith<$Res> {
  __$$KidsStateImplCopyWithImpl(
      _$KidsStateImpl _value, $Res Function(_$KidsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
    Object? secondsLeft = null,
    Object? currentWord = null,
    Object? currentText = null,
  }) {
    return _then(_$KidsStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      currentWord: null == currentWord
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as String,
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KidsStateImpl implements _KidsState {
  const _$KidsStateImpl(
      {required this.id,
      required this.username,
      required this.points,
      required this.secondsLeft,
      required this.currentWord,
      required this.currentText});

  @override
  final String id;
  @override
  final String username;
  @override
  final int points;
  @override
  final int secondsLeft;
  @override
  final String currentWord;
  @override
  final String currentText;

  @override
  String toString() {
    return 'KidsState(id: $id, username: $username, points: $points, secondsLeft: $secondsLeft, currentWord: $currentWord, currentText: $currentText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidsStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.currentWord, currentWord) ||
                other.currentWord == currentWord) &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, points, secondsLeft, currentWord, currentText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidsStateImplCopyWith<_$KidsStateImpl> get copyWith =>
      __$$KidsStateImplCopyWithImpl<_$KidsStateImpl>(this, _$identity);
}

abstract class _KidsState implements KidsState {
  const factory _KidsState(
      {required final String id,
      required final String username,
      required final int points,
      required final int secondsLeft,
      required final String currentWord,
      required final String currentText}) = _$KidsStateImpl;

  @override
  String get id;
  @override
  String get username;
  @override
  int get points;
  @override
  int get secondsLeft;
  @override
  String get currentWord;
  @override
  String get currentText;
  @override
  @JsonKey(ignore: true)
  _$$KidsStateImplCopyWith<_$KidsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminState {
  List<Player> get players => throw _privateConstructorUsedError;
  int get secondsLeft => throw _privateConstructorUsedError;
  GameMode get mode => throw _privateConstructorUsedError;
  int get groupCount => throw _privateConstructorUsedError;
  Map<String, int> get memberships => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminStateCopyWith<AdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res, AdminState>;
  @useResult
  $Res call(
      {List<Player> players,
      int secondsLeft,
      GameMode mode,
      int groupCount,
      Map<String, int> memberships});
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res, $Val extends AdminState>
    implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? secondsLeft = null,
    Object? mode = null,
    Object? groupCount = null,
    Object? memberships = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      groupCount: null == groupCount
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      memberships: null == memberships
          ? _value.memberships
          : memberships // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminStateImplCopyWith<$Res>
    implements $AdminStateCopyWith<$Res> {
  factory _$$AdminStateImplCopyWith(
          _$AdminStateImpl value, $Res Function(_$AdminStateImpl) then) =
      __$$AdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Player> players,
      int secondsLeft,
      GameMode mode,
      int groupCount,
      Map<String, int> memberships});
}

/// @nodoc
class __$$AdminStateImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$AdminStateImpl>
    implements _$$AdminStateImplCopyWith<$Res> {
  __$$AdminStateImplCopyWithImpl(
      _$AdminStateImpl _value, $Res Function(_$AdminStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? secondsLeft = null,
    Object? mode = null,
    Object? groupCount = null,
    Object? memberships = null,
  }) {
    return _then(_$AdminStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      groupCount: null == groupCount
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      memberships: null == memberships
          ? _value._memberships
          : memberships // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$AdminStateImpl implements _AdminState {
  const _$AdminStateImpl(
      {required final List<Player> players,
      required this.secondsLeft,
      required this.mode,
      required this.groupCount,
      required final Map<String, int> memberships})
      : _players = players,
        _memberships = memberships;

  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final int secondsLeft;
  @override
  final GameMode mode;
  @override
  final int groupCount;
  final Map<String, int> _memberships;
  @override
  Map<String, int> get memberships {
    if (_memberships is EqualUnmodifiableMapView) return _memberships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memberships);
  }

  @override
  String toString() {
    return 'AdminState(players: $players, secondsLeft: $secondsLeft, mode: $mode, groupCount: $groupCount, memberships: $memberships)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.groupCount, groupCount) ||
                other.groupCount == groupCount) &&
            const DeepCollectionEquality()
                .equals(other._memberships, _memberships));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      secondsLeft,
      mode,
      groupCount,
      const DeepCollectionEquality().hash(_memberships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminStateImplCopyWith<_$AdminStateImpl> get copyWith =>
      __$$AdminStateImplCopyWithImpl<_$AdminStateImpl>(this, _$identity);
}

abstract class _AdminState implements AdminState {
  const factory _AdminState(
      {required final List<Player> players,
      required final int secondsLeft,
      required final GameMode mode,
      required final int groupCount,
      required final Map<String, int> memberships}) = _$AdminStateImpl;

  @override
  List<Player> get players;
  @override
  int get secondsLeft;
  @override
  GameMode get mode;
  @override
  int get groupCount;
  @override
  Map<String, int> get memberships;
  @override
  @JsonKey(ignore: true)
  _$$AdminStateImplCopyWith<_$AdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
