// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_trips_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerTripsState {
  Game get game => throw _privateConstructorUsedError;
  GamePlayer get gamePlayer => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerTripsStateCopyWith<PlayerTripsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerTripsStateCopyWith<$Res> {
  factory $PlayerTripsStateCopyWith(
    PlayerTripsState value,
    $Res Function(PlayerTripsState) then,
  ) = _$PlayerTripsStateCopyWithImpl<$Res, PlayerTripsState>;
  @useResult
  $Res call({
    Game game,
    GamePlayer gamePlayer,
    bool isLoading,
    String? errorMessage,
  });

  $GameCopyWith<$Res> get game;
  $GamePlayerCopyWith<$Res> get gamePlayer;
}

/// @nodoc
class _$PlayerTripsStateCopyWithImpl<$Res, $Val extends PlayerTripsState>
    implements $PlayerTripsStateCopyWith<$Res> {
  _$PlayerTripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? gamePlayer = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            game: null == game
                ? _value.game
                : game // ignore: cast_nullable_to_non_nullable
                      as Game,
            gamePlayer: null == gamePlayer
                ? _value.gamePlayer
                : gamePlayer // ignore: cast_nullable_to_non_nullable
                      as GamePlayer,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GamePlayerCopyWith<$Res> get gamePlayer {
    return $GamePlayerCopyWith<$Res>(_value.gamePlayer, (value) {
      return _then(_value.copyWith(gamePlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerTripsStateImplCopyWith<$Res>
    implements $PlayerTripsStateCopyWith<$Res> {
  factory _$$PlayerTripsStateImplCopyWith(
    _$PlayerTripsStateImpl value,
    $Res Function(_$PlayerTripsStateImpl) then,
  ) = __$$PlayerTripsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Game game,
    GamePlayer gamePlayer,
    bool isLoading,
    String? errorMessage,
  });

  @override
  $GameCopyWith<$Res> get game;
  @override
  $GamePlayerCopyWith<$Res> get gamePlayer;
}

/// @nodoc
class __$$PlayerTripsStateImplCopyWithImpl<$Res>
    extends _$PlayerTripsStateCopyWithImpl<$Res, _$PlayerTripsStateImpl>
    implements _$$PlayerTripsStateImplCopyWith<$Res> {
  __$$PlayerTripsStateImplCopyWithImpl(
    _$PlayerTripsStateImpl _value,
    $Res Function(_$PlayerTripsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? gamePlayer = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$PlayerTripsStateImpl(
        game: null == game
            ? _value.game
            : game // ignore: cast_nullable_to_non_nullable
                  as Game,
        gamePlayer: null == gamePlayer
            ? _value.gamePlayer
            : gamePlayer // ignore: cast_nullable_to_non_nullable
                  as GamePlayer,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PlayerTripsStateImpl implements _PlayerTripsState {
  const _$PlayerTripsStateImpl({
    required this.game,
    required this.gamePlayer,
    this.isLoading = false,
    this.errorMessage,
  });

  @override
  final Game game;
  @override
  final GamePlayer gamePlayer;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PlayerTripsState(game: $game, gamePlayer: $gamePlayer, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerTripsStateImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.gamePlayer, gamePlayer) ||
                other.gamePlayer == gamePlayer) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, game, gamePlayer, isLoading, errorMessage);

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerTripsStateImplCopyWith<_$PlayerTripsStateImpl> get copyWith =>
      __$$PlayerTripsStateImplCopyWithImpl<_$PlayerTripsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PlayerTripsState implements PlayerTripsState {
  const factory _PlayerTripsState({
    required final Game game,
    required final GamePlayer gamePlayer,
    final bool isLoading,
    final String? errorMessage,
  }) = _$PlayerTripsStateImpl;

  @override
  Game get game;
  @override
  GamePlayer get gamePlayer;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of PlayerTripsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerTripsStateImplCopyWith<_$PlayerTripsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
