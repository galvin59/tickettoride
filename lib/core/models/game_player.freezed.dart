// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GamePlayer {
  Player get player => throw _privateConstructorUsedError;
  List<PlayerDestination> get destinations =>
      throw _privateConstructorUsedError;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePlayerCopyWith<GamePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerCopyWith<$Res> {
  factory $GamePlayerCopyWith(
    GamePlayer value,
    $Res Function(GamePlayer) then,
  ) = _$GamePlayerCopyWithImpl<$Res, GamePlayer>;
  @useResult
  $Res call({Player player, List<PlayerDestination> destinations});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$GamePlayerCopyWithImpl<$Res, $Val extends GamePlayer>
    implements $GamePlayerCopyWith<$Res> {
  _$GamePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? player = null, Object? destinations = null}) {
    return _then(
      _value.copyWith(
            player: null == player
                ? _value.player
                : player // ignore: cast_nullable_to_non_nullable
                      as Player,
            destinations: null == destinations
                ? _value.destinations
                : destinations // ignore: cast_nullable_to_non_nullable
                      as List<PlayerDestination>,
          )
          as $Val,
    );
  }

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GamePlayerImplCopyWith<$Res>
    implements $GamePlayerCopyWith<$Res> {
  factory _$$GamePlayerImplCopyWith(
    _$GamePlayerImpl value,
    $Res Function(_$GamePlayerImpl) then,
  ) = __$$GamePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Player player, List<PlayerDestination> destinations});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$GamePlayerImplCopyWithImpl<$Res>
    extends _$GamePlayerCopyWithImpl<$Res, _$GamePlayerImpl>
    implements _$$GamePlayerImplCopyWith<$Res> {
  __$$GamePlayerImplCopyWithImpl(
    _$GamePlayerImpl _value,
    $Res Function(_$GamePlayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? player = null, Object? destinations = null}) {
    return _then(
      _$GamePlayerImpl(
        player: null == player
            ? _value.player
            : player // ignore: cast_nullable_to_non_nullable
                  as Player,
        destinations: null == destinations
            ? _value._destinations
            : destinations // ignore: cast_nullable_to_non_nullable
                  as List<PlayerDestination>,
      ),
    );
  }
}

/// @nodoc

class _$GamePlayerImpl implements _GamePlayer {
  const _$GamePlayerImpl({
    required this.player,
    required final List<PlayerDestination> destinations,
  }) : _destinations = destinations;

  @override
  final Player player;
  final List<PlayerDestination> _destinations;
  @override
  List<PlayerDestination> get destinations {
    if (_destinations is EqualUnmodifiableListView) return _destinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinations);
  }

  @override
  String toString() {
    return 'GamePlayer(player: $player, destinations: $destinations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayerImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality().equals(
              other._destinations,
              _destinations,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    player,
    const DeepCollectionEquality().hash(_destinations),
  );

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayerImplCopyWith<_$GamePlayerImpl> get copyWith =>
      __$$GamePlayerImplCopyWithImpl<_$GamePlayerImpl>(this, _$identity);
}

abstract class _GamePlayer implements GamePlayer {
  const factory _GamePlayer({
    required final Player player,
    required final List<PlayerDestination> destinations,
  }) = _$GamePlayerImpl;

  @override
  Player get player;
  @override
  List<PlayerDestination> get destinations;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayerImplCopyWith<_$GamePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
