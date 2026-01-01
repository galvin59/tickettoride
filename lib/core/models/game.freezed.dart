// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Game {
  List<GamePlayer> get players => throw _privateConstructorUsedError;
  List<Destination> get availableLongDestinations =>
      throw _privateConstructorUsedError;
  List<Destination> get availableShortDestinations =>
      throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({
    List<GamePlayer> players,
    List<Destination> availableLongDestinations,
    List<Destination> availableShortDestinations,
  });
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? availableLongDestinations = null,
    Object? availableShortDestinations = null,
  }) {
    return _then(
      _value.copyWith(
            players: null == players
                ? _value.players
                : players // ignore: cast_nullable_to_non_nullable
                      as List<GamePlayer>,
            availableLongDestinations: null == availableLongDestinations
                ? _value.availableLongDestinations
                : availableLongDestinations // ignore: cast_nullable_to_non_nullable
                      as List<Destination>,
            availableShortDestinations: null == availableShortDestinations
                ? _value.availableShortDestinations
                : availableShortDestinations // ignore: cast_nullable_to_non_nullable
                      as List<Destination>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
    _$GameImpl value,
    $Res Function(_$GameImpl) then,
  ) = __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<GamePlayer> players,
    List<Destination> availableLongDestinations,
    List<Destination> availableShortDestinations,
  });
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
    : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? availableLongDestinations = null,
    Object? availableShortDestinations = null,
  }) {
    return _then(
      _$GameImpl(
        players: null == players
            ? _value._players
            : players // ignore: cast_nullable_to_non_nullable
                  as List<GamePlayer>,
        availableLongDestinations: null == availableLongDestinations
            ? _value._availableLongDestinations
            : availableLongDestinations // ignore: cast_nullable_to_non_nullable
                  as List<Destination>,
        availableShortDestinations: null == availableShortDestinations
            ? _value._availableShortDestinations
            : availableShortDestinations // ignore: cast_nullable_to_non_nullable
                  as List<Destination>,
      ),
    );
  }
}

/// @nodoc

class _$GameImpl implements _Game {
  const _$GameImpl({
    required final List<GamePlayer> players,
    required final List<Destination> availableLongDestinations,
    required final List<Destination> availableShortDestinations,
  }) : _players = players,
       _availableLongDestinations = availableLongDestinations,
       _availableShortDestinations = availableShortDestinations;

  final List<GamePlayer> _players;
  @override
  List<GamePlayer> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<Destination> _availableLongDestinations;
  @override
  List<Destination> get availableLongDestinations {
    if (_availableLongDestinations is EqualUnmodifiableListView)
      return _availableLongDestinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableLongDestinations);
  }

  final List<Destination> _availableShortDestinations;
  @override
  List<Destination> get availableShortDestinations {
    if (_availableShortDestinations is EqualUnmodifiableListView)
      return _availableShortDestinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableShortDestinations);
  }

  @override
  String toString() {
    return 'Game(players: $players, availableLongDestinations: $availableLongDestinations, availableShortDestinations: $availableShortDestinations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(
              other._availableLongDestinations,
              _availableLongDestinations,
            ) &&
            const DeepCollectionEquality().equals(
              other._availableShortDestinations,
              _availableShortDestinations,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_players),
    const DeepCollectionEquality().hash(_availableLongDestinations),
    const DeepCollectionEquality().hash(_availableShortDestinations),
  );

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game implements Game {
  const factory _Game({
    required final List<GamePlayer> players,
    required final List<Destination> availableLongDestinations,
    required final List<Destination> availableShortDestinations,
  }) = _$GameImpl;

  @override
  List<GamePlayer> get players;
  @override
  List<Destination> get availableLongDestinations;
  @override
  List<Destination> get availableShortDestinations;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
