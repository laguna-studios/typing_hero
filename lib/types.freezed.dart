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

GameRoom _$GameRoomFromJson(Map<String, dynamic> json) {
  return _GameRoom.fromJson(json);
}

/// @nodoc
mixin _$GameRoom {
  String get ownerId => throw _privateConstructorUsedError;
  set ownerId(String value) => throw _privateConstructorUsedError;
  int get pin => throw _privateConstructorUsedError;
  set pin(int value) => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  set open(bool value) => throw _privateConstructorUsedError;
  List<User> get players => throw _privateConstructorUsedError;
  set players(List<User> value) => throw _privateConstructorUsedError;
  Game? get game => throw _privateConstructorUsedError;
  set game(Game? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameRoomCopyWith<GameRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoomCopyWith<$Res> {
  factory $GameRoomCopyWith(GameRoom value, $Res Function(GameRoom) then) =
      _$GameRoomCopyWithImpl<$Res, GameRoom>;
  @useResult
  $Res call(
      {String ownerId, int pin, bool open, List<User> players, Game? game});

  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class _$GameRoomCopyWithImpl<$Res, $Val extends GameRoom>
    implements $GameRoomCopyWith<$Res> {
  _$GameRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? pin = null,
    Object? open = null,
    Object? players = null,
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<User>,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameRoomImplCopyWith<$Res>
    implements $GameRoomCopyWith<$Res> {
  factory _$$GameRoomImplCopyWith(
          _$GameRoomImpl value, $Res Function(_$GameRoomImpl) then) =
      __$$GameRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ownerId, int pin, bool open, List<User> players, Game? game});

  @override
  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$$GameRoomImplCopyWithImpl<$Res>
    extends _$GameRoomCopyWithImpl<$Res, _$GameRoomImpl>
    implements _$$GameRoomImplCopyWith<$Res> {
  __$$GameRoomImplCopyWithImpl(
      _$GameRoomImpl _value, $Res Function(_$GameRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? pin = null,
    Object? open = null,
    Object? players = null,
    Object? game = freezed,
  }) {
    return _then(_$GameRoomImpl(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<User>,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameRoomImpl implements _GameRoom {
  _$GameRoomImpl(
      {required this.ownerId,
      required this.pin,
      required this.open,
      required this.players,
      required this.game});

  factory _$GameRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameRoomImplFromJson(json);

  @override
  String ownerId;
  @override
  int pin;
  @override
  bool open;
  @override
  List<User> players;
  @override
  Game? game;

  @override
  String toString() {
    return 'GameRoom(ownerId: $ownerId, pin: $pin, open: $open, players: $players, game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoomImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.open, open) || other.open == open) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            (identical(other.game, game) || other.game == game));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownerId, pin, open,
      const DeepCollectionEquality().hash(players), game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRoomImplCopyWith<_$GameRoomImpl> get copyWith =>
      __$$GameRoomImplCopyWithImpl<_$GameRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameRoomImplToJson(
      this,
    );
  }
}

abstract class _GameRoom implements GameRoom {
  factory _GameRoom(
      {required String ownerId,
      required int pin,
      required bool open,
      required List<User> players,
      required Game? game}) = _$GameRoomImpl;

  factory _GameRoom.fromJson(Map<String, dynamic> json) =
      _$GameRoomImpl.fromJson;

  @override
  String get ownerId;
  set ownerId(String value);
  @override
  int get pin;
  set pin(int value);
  @override
  bool get open;
  set open(bool value);
  @override
  List<User> get players;
  set players(List<User> value);
  @override
  Game? get game;
  set game(Game? value);
  @override
  @JsonKey(ignore: true)
  _$$GameRoomImplCopyWith<_$GameRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  List<String> get words => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({String id, List<String> words, int startTime, int endTime});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? words = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> words, int startTime, int endTime});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? words = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.id,
      required final List<String> words,
      required this.startTime,
      required this.endTime})
      : _words = words;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String id;
  final List<String> _words;
  @override
  List<String> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  final int startTime;
  @override
  final int endTime;

  @override
  String toString() {
    return 'Game(id: $id, words: $words, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_words), startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String id,
      required final List<String> words,
      required final int startTime,
      required final int endTime}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get words;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  set points(int value) => throw _privateConstructorUsedError;
  int get gameRoomPin => throw _privateConstructorUsedError;
  set gameRoomPin(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String id, String username, int points, int gameRoomPin});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
    Object? gameRoomPin = null,
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
      gameRoomPin: null == gameRoomPin
          ? _value.gameRoomPin
          : gameRoomPin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username, int points, int gameRoomPin});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
    Object? gameRoomPin = null,
  }) {
    return _then(_$UserImpl(
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
      gameRoomPin: null == gameRoomPin
          ? _value.gameRoomPin
          : gameRoomPin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      required this.username,
      required this.points,
      required this.gameRoomPin});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  String id;
  @override
  String username;
  @override
  int points;
  @override
  int gameRoomPin;

  @override
  String toString() {
    return 'User(id: $id, username: $username, points: $points, gameRoomPin: $gameRoomPin)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required String id,
      required String username,
      required int points,
      required int gameRoomPin}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get username;
  set username(String value);
  @override
  int get points;
  set points(int value);
  @override
  int get gameRoomPin;
  set gameRoomPin(int value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  int get currentScreen => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  int get wordIndex => throw _privateConstructorUsedError;
  String get typing => throw _privateConstructorUsedError;
  int get secondsLeft => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Game? get game => throw _privateConstructorUsedError;
  GameRoom? get gameRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {int currentScreen,
      String error,
      int wordIndex,
      String typing,
      int secondsLeft,
      User? user,
      Game? game,
      GameRoom? gameRoom});

  $UserCopyWith<$Res>? get user;
  $GameCopyWith<$Res>? get game;
  $GameRoomCopyWith<$Res>? get gameRoom;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentScreen = null,
    Object? error = null,
    Object? wordIndex = null,
    Object? typing = null,
    Object? secondsLeft = null,
    Object? user = freezed,
    Object? game = freezed,
    Object? gameRoom = freezed,
  }) {
    return _then(_value.copyWith(
      currentScreen: null == currentScreen
          ? _value.currentScreen
          : currentScreen // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      wordIndex: null == wordIndex
          ? _value.wordIndex
          : wordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      typing: null == typing
          ? _value.typing
          : typing // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      gameRoom: freezed == gameRoom
          ? _value.gameRoom
          : gameRoom // ignore: cast_nullable_to_non_nullable
              as GameRoom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameRoomCopyWith<$Res>? get gameRoom {
    if (_value.gameRoom == null) {
      return null;
    }

    return $GameRoomCopyWith<$Res>(_value.gameRoom!, (value) {
      return _then(_value.copyWith(gameRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentScreen,
      String error,
      int wordIndex,
      String typing,
      int secondsLeft,
      User? user,
      Game? game,
      GameRoom? gameRoom});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $GameCopyWith<$Res>? get game;
  @override
  $GameRoomCopyWith<$Res>? get gameRoom;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentScreen = null,
    Object? error = null,
    Object? wordIndex = null,
    Object? typing = null,
    Object? secondsLeft = null,
    Object? user = freezed,
    Object? game = freezed,
    Object? gameRoom = freezed,
  }) {
    return _then(_$AppStateImpl(
      currentScreen: null == currentScreen
          ? _value.currentScreen
          : currentScreen // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      wordIndex: null == wordIndex
          ? _value.wordIndex
          : wordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      typing: null == typing
          ? _value.typing
          : typing // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      gameRoom: freezed == gameRoom
          ? _value.gameRoom
          : gameRoom // ignore: cast_nullable_to_non_nullable
              as GameRoom?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.currentScreen,
      required this.error,
      required this.wordIndex,
      required this.typing,
      required this.secondsLeft,
      required this.user,
      required this.game,
      required this.gameRoom});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  final int currentScreen;
  @override
  final String error;
  @override
  final int wordIndex;
  @override
  final String typing;
  @override
  final int secondsLeft;
  @override
  final User? user;
  @override
  final Game? game;
  @override
  final GameRoom? gameRoom;

  @override
  String toString() {
    return 'AppState(currentScreen: $currentScreen, error: $error, wordIndex: $wordIndex, typing: $typing, secondsLeft: $secondsLeft, user: $user, game: $game, gameRoom: $gameRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.currentScreen, currentScreen) ||
                other.currentScreen == currentScreen) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.wordIndex, wordIndex) ||
                other.wordIndex == wordIndex) &&
            (identical(other.typing, typing) || other.typing == typing) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.gameRoom, gameRoom) ||
                other.gameRoom == gameRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentScreen, error, wordIndex,
      typing, secondsLeft, user, game, gameRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final int currentScreen,
      required final String error,
      required final int wordIndex,
      required final String typing,
      required final int secondsLeft,
      required final User? user,
      required final Game? game,
      required final GameRoom? gameRoom}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  int get currentScreen;
  @override
  String get error;
  @override
  int get wordIndex;
  @override
  String get typing;
  @override
  int get secondsLeft;
  @override
  User? get user;
  @override
  Game? get game;
  @override
  GameRoom? get gameRoom;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeacherState _$TeacherStateFromJson(Map<String, dynamic> json) {
  return _TeacherState.fromJson(json);
}

/// @nodoc
mixin _$TeacherState {
  int get gameMode => throw _privateConstructorUsedError;
  int get teamCount => throw _privateConstructorUsedError;
  Map<String, int> get membership => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call({int gameMode, int teamCount, Map<String, int> membership});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameMode = null,
    Object? teamCount = null,
    Object? membership = null,
  }) {
    return _then(_value.copyWith(
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as int,
      teamCount: null == teamCount
          ? _value.teamCount
          : teamCount // ignore: cast_nullable_to_non_nullable
              as int,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherStateImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$TeacherStateImplCopyWith(
          _$TeacherStateImpl value, $Res Function(_$TeacherStateImpl) then) =
      __$$TeacherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gameMode, int teamCount, Map<String, int> membership});
}

/// @nodoc
class __$$TeacherStateImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$TeacherStateImpl>
    implements _$$TeacherStateImplCopyWith<$Res> {
  __$$TeacherStateImplCopyWithImpl(
      _$TeacherStateImpl _value, $Res Function(_$TeacherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameMode = null,
    Object? teamCount = null,
    Object? membership = null,
  }) {
    return _then(_$TeacherStateImpl(
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as int,
      teamCount: null == teamCount
          ? _value.teamCount
          : teamCount // ignore: cast_nullable_to_non_nullable
              as int,
      membership: null == membership
          ? _value._membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherStateImpl implements _TeacherState {
  const _$TeacherStateImpl(
      {required this.gameMode,
      required this.teamCount,
      required final Map<String, int> membership})
      : _membership = membership;

  factory _$TeacherStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherStateImplFromJson(json);

  @override
  final int gameMode;
  @override
  final int teamCount;
  final Map<String, int> _membership;
  @override
  Map<String, int> get membership {
    if (_membership is EqualUnmodifiableMapView) return _membership;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_membership);
  }

  @override
  String toString() {
    return 'TeacherState(gameMode: $gameMode, teamCount: $teamCount, membership: $membership)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherStateImpl &&
            (identical(other.gameMode, gameMode) ||
                other.gameMode == gameMode) &&
            (identical(other.teamCount, teamCount) ||
                other.teamCount == teamCount) &&
            const DeepCollectionEquality()
                .equals(other._membership, _membership));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameMode, teamCount,
      const DeepCollectionEquality().hash(_membership));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      __$$TeacherStateImplCopyWithImpl<_$TeacherStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherStateImplToJson(
      this,
    );
  }
}

abstract class _TeacherState implements TeacherState {
  const factory _TeacherState(
      {required final int gameMode,
      required final int teamCount,
      required final Map<String, int> membership}) = _$TeacherStateImpl;

  factory _TeacherState.fromJson(Map<String, dynamic> json) =
      _$TeacherStateImpl.fromJson;

  @override
  int get gameMode;
  @override
  int get teamCount;
  @override
  Map<String, int> get membership;
  @override
  @JsonKey(ignore: true)
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
