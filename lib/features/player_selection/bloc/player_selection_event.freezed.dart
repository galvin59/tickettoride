// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSelectionEventCopyWith<$Res> {
  factory $PlayerSelectionEventCopyWith(
    PlayerSelectionEvent value,
    $Res Function(PlayerSelectionEvent) then,
  ) = _$PlayerSelectionEventCopyWithImpl<$Res, PlayerSelectionEvent>;
}

/// @nodoc
class _$PlayerSelectionEventCopyWithImpl<
  $Res,
  $Val extends PlayerSelectionEvent
>
    implements $PlayerSelectionEventCopyWith<$Res> {
  _$PlayerSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlayerSelectionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerSelectionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PlayerNameChangedImplCopyWith<$Res> {
  factory _$$PlayerNameChangedImplCopyWith(
    _$PlayerNameChangedImpl value,
    $Res Function(_$PlayerNameChangedImpl) then,
  ) = __$$PlayerNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerNameChangedImplCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res, _$PlayerNameChangedImpl>
    implements _$$PlayerNameChangedImplCopyWith<$Res> {
  __$$PlayerNameChangedImplCopyWithImpl(
    _$PlayerNameChangedImpl _value,
    $Res Function(_$PlayerNameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$PlayerNameChangedImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PlayerNameChangedImpl implements _PlayerNameChanged {
  const _$PlayerNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerSelectionEvent.playerNameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerNameChangedImplCopyWith<_$PlayerNameChangedImpl> get copyWith =>
      __$$PlayerNameChangedImplCopyWithImpl<_$PlayerNameChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return playerNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return playerNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (playerNameChanged != null) {
      return playerNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return playerNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return playerNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (playerNameChanged != null) {
      return playerNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PlayerNameChanged implements PlayerSelectionEvent {
  const factory _PlayerNameChanged(final String name) = _$PlayerNameChangedImpl;

  String get name;

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerNameChangedImplCopyWith<_$PlayerNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPlayerPressedImplCopyWith<$Res> {
  factory _$$AddPlayerPressedImplCopyWith(
    _$AddPlayerPressedImpl value,
    $Res Function(_$AddPlayerPressedImpl) then,
  ) = __$$AddPlayerPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddPlayerPressedImplCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res, _$AddPlayerPressedImpl>
    implements _$$AddPlayerPressedImplCopyWith<$Res> {
  __$$AddPlayerPressedImplCopyWithImpl(
    _$AddPlayerPressedImpl _value,
    $Res Function(_$AddPlayerPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddPlayerPressedImpl implements _AddPlayerPressed {
  const _$AddPlayerPressedImpl();

  @override
  String toString() {
    return 'PlayerSelectionEvent.addPlayerPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddPlayerPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return addPlayerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return addPlayerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (addPlayerPressed != null) {
      return addPlayerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return addPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return addPlayerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (addPlayerPressed != null) {
      return addPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class _AddPlayerPressed implements PlayerSelectionEvent {
  const factory _AddPlayerPressed() = _$AddPlayerPressedImpl;
}

/// @nodoc
abstract class _$$DeletePlayerPressedImplCopyWith<$Res> {
  factory _$$DeletePlayerPressedImplCopyWith(
    _$DeletePlayerPressedImpl value,
    $Res Function(_$DeletePlayerPressedImpl) then,
  ) = __$$DeletePlayerPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId});
}

/// @nodoc
class __$$DeletePlayerPressedImplCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res, _$DeletePlayerPressedImpl>
    implements _$$DeletePlayerPressedImplCopyWith<$Res> {
  __$$DeletePlayerPressedImplCopyWithImpl(
    _$DeletePlayerPressedImpl _value,
    $Res Function(_$DeletePlayerPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playerId = null}) {
    return _then(
      _$DeletePlayerPressedImpl(
        null == playerId
            ? _value.playerId
            : playerId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeletePlayerPressedImpl implements _DeletePlayerPressed {
  const _$DeletePlayerPressedImpl(this.playerId);

  @override
  final String playerId;

  @override
  String toString() {
    return 'PlayerSelectionEvent.deletePlayerPressed(playerId: $playerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlayerPressedImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlayerPressedImplCopyWith<_$DeletePlayerPressedImpl> get copyWith =>
      __$$DeletePlayerPressedImplCopyWithImpl<_$DeletePlayerPressedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return deletePlayerPressed(playerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return deletePlayerPressed?.call(playerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (deletePlayerPressed != null) {
      return deletePlayerPressed(playerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return deletePlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return deletePlayerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (deletePlayerPressed != null) {
      return deletePlayerPressed(this);
    }
    return orElse();
  }
}

abstract class _DeletePlayerPressed implements PlayerSelectionEvent {
  const factory _DeletePlayerPressed(final String playerId) =
      _$DeletePlayerPressedImpl;

  String get playerId;

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePlayerPressedImplCopyWith<_$DeletePlayerPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePlayerSelectionImplCopyWith<$Res> {
  factory _$$TogglePlayerSelectionImplCopyWith(
    _$TogglePlayerSelectionImpl value,
    $Res Function(_$TogglePlayerSelectionImpl) then,
  ) = __$$TogglePlayerSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId});
}

/// @nodoc
class __$$TogglePlayerSelectionImplCopyWithImpl<$Res>
    extends
        _$PlayerSelectionEventCopyWithImpl<$Res, _$TogglePlayerSelectionImpl>
    implements _$$TogglePlayerSelectionImplCopyWith<$Res> {
  __$$TogglePlayerSelectionImplCopyWithImpl(
    _$TogglePlayerSelectionImpl _value,
    $Res Function(_$TogglePlayerSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playerId = null}) {
    return _then(
      _$TogglePlayerSelectionImpl(
        null == playerId
            ? _value.playerId
            : playerId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TogglePlayerSelectionImpl implements _TogglePlayerSelection {
  const _$TogglePlayerSelectionImpl(this.playerId);

  @override
  final String playerId;

  @override
  String toString() {
    return 'PlayerSelectionEvent.togglePlayerSelection(playerId: $playerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePlayerSelectionImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePlayerSelectionImplCopyWith<_$TogglePlayerSelectionImpl>
  get copyWith =>
      __$$TogglePlayerSelectionImplCopyWithImpl<_$TogglePlayerSelectionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return togglePlayerSelection(playerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return togglePlayerSelection?.call(playerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (togglePlayerSelection != null) {
      return togglePlayerSelection(playerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return togglePlayerSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return togglePlayerSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (togglePlayerSelection != null) {
      return togglePlayerSelection(this);
    }
    return orElse();
  }
}

abstract class _TogglePlayerSelection implements PlayerSelectionEvent {
  const factory _TogglePlayerSelection(final String playerId) =
      _$TogglePlayerSelectionImpl;

  String get playerId;

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePlayerSelectionImplCopyWith<_$TogglePlayerSelectionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartGamePressedImplCopyWith<$Res> {
  factory _$$StartGamePressedImplCopyWith(
    _$StartGamePressedImpl value,
    $Res Function(_$StartGamePressedImpl) then,
  ) = __$$StartGamePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartGamePressedImplCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res, _$StartGamePressedImpl>
    implements _$$StartGamePressedImplCopyWith<$Res> {
  __$$StartGamePressedImplCopyWithImpl(
    _$StartGamePressedImpl _value,
    $Res Function(_$StartGamePressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartGamePressedImpl implements _StartGamePressed {
  const _$StartGamePressedImpl();

  @override
  String toString() {
    return 'PlayerSelectionEvent.startGamePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartGamePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) playerNameChanged,
    required TResult Function() addPlayerPressed,
    required TResult Function(String playerId) deletePlayerPressed,
    required TResult Function(String playerId) togglePlayerSelection,
    required TResult Function() startGamePressed,
  }) {
    return startGamePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? playerNameChanged,
    TResult? Function()? addPlayerPressed,
    TResult? Function(String playerId)? deletePlayerPressed,
    TResult? Function(String playerId)? togglePlayerSelection,
    TResult? Function()? startGamePressed,
  }) {
    return startGamePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? playerNameChanged,
    TResult Function()? addPlayerPressed,
    TResult Function(String playerId)? deletePlayerPressed,
    TResult Function(String playerId)? togglePlayerSelection,
    TResult Function()? startGamePressed,
    required TResult orElse(),
  }) {
    if (startGamePressed != null) {
      return startGamePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PlayerNameChanged value) playerNameChanged,
    required TResult Function(_AddPlayerPressed value) addPlayerPressed,
    required TResult Function(_DeletePlayerPressed value) deletePlayerPressed,
    required TResult Function(_TogglePlayerSelection value)
    togglePlayerSelection,
    required TResult Function(_StartGamePressed value) startGamePressed,
  }) {
    return startGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PlayerNameChanged value)? playerNameChanged,
    TResult? Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult? Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult? Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult? Function(_StartGamePressed value)? startGamePressed,
  }) {
    return startGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PlayerNameChanged value)? playerNameChanged,
    TResult Function(_AddPlayerPressed value)? addPlayerPressed,
    TResult Function(_DeletePlayerPressed value)? deletePlayerPressed,
    TResult Function(_TogglePlayerSelection value)? togglePlayerSelection,
    TResult Function(_StartGamePressed value)? startGamePressed,
    required TResult orElse(),
  }) {
    if (startGamePressed != null) {
      return startGamePressed(this);
    }
    return orElse();
  }
}

abstract class _StartGamePressed implements PlayerSelectionEvent {
  const factory _StartGamePressed() = _$StartGamePressedImpl;
}
