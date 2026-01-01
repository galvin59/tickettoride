// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerId, bool isStartingGame) started,
    required TResult Function() toggleLongDestination,
    required TResult Function(Destination destination) toggleShortDestination,
    required TResult Function() confirmSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerId, bool isStartingGame)? started,
    TResult? Function()? toggleLongDestination,
    TResult? Function(Destination destination)? toggleShortDestination,
    TResult? Function()? confirmSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerId, bool isStartingGame)? started,
    TResult Function()? toggleLongDestination,
    TResult Function(Destination destination)? toggleShortDestination,
    TResult Function()? confirmSelection,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleLongDestination value)
    toggleLongDestination,
    required TResult Function(_ToggleShortDestination value)
    toggleShortDestination,
    required TResult Function(_ConfirmSelection value) confirmSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult? Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult? Function(_ConfirmSelection value)? confirmSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult Function(_ConfirmSelection value)? confirmSelection,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSelectionEventCopyWith<$Res> {
  factory $TripSelectionEventCopyWith(
    TripSelectionEvent value,
    $Res Function(TripSelectionEvent) then,
  ) = _$TripSelectionEventCopyWithImpl<$Res, TripSelectionEvent>;
}

/// @nodoc
class _$TripSelectionEventCopyWithImpl<$Res, $Val extends TripSelectionEvent>
    implements $TripSelectionEventCopyWith<$Res> {
  _$TripSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId, bool isStartingGame});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TripSelectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playerId = null, Object? isStartingGame = null}) {
    return _then(
      _$StartedImpl(
        playerId: null == playerId
            ? _value.playerId
            : playerId // ignore: cast_nullable_to_non_nullable
                  as String,
        isStartingGame: null == isStartingGame
            ? _value.isStartingGame
            : isStartingGame // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.playerId, required this.isStartingGame});

  @override
  final String playerId;
  @override
  final bool isStartingGame;

  @override
  String toString() {
    return 'TripSelectionEvent.started(playerId: $playerId, isStartingGame: $isStartingGame)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.isStartingGame, isStartingGame) ||
                other.isStartingGame == isStartingGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId, isStartingGame);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerId, bool isStartingGame) started,
    required TResult Function() toggleLongDestination,
    required TResult Function(Destination destination) toggleShortDestination,
    required TResult Function() confirmSelection,
  }) {
    return started(playerId, isStartingGame);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerId, bool isStartingGame)? started,
    TResult? Function()? toggleLongDestination,
    TResult? Function(Destination destination)? toggleShortDestination,
    TResult? Function()? confirmSelection,
  }) {
    return started?.call(playerId, isStartingGame);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerId, bool isStartingGame)? started,
    TResult Function()? toggleLongDestination,
    TResult Function(Destination destination)? toggleShortDestination,
    TResult Function()? confirmSelection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(playerId, isStartingGame);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleLongDestination value)
    toggleLongDestination,
    required TResult Function(_ToggleShortDestination value)
    toggleShortDestination,
    required TResult Function(_ConfirmSelection value) confirmSelection,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult? Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult? Function(_ConfirmSelection value)? confirmSelection,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult Function(_ConfirmSelection value)? confirmSelection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TripSelectionEvent {
  const factory _Started({
    required final String playerId,
    required final bool isStartingGame,
  }) = _$StartedImpl;

  String get playerId;
  bool get isStartingGame;

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleLongDestinationImplCopyWith<$Res> {
  factory _$$ToggleLongDestinationImplCopyWith(
    _$ToggleLongDestinationImpl value,
    $Res Function(_$ToggleLongDestinationImpl) then,
  ) = __$$ToggleLongDestinationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLongDestinationImplCopyWithImpl<$Res>
    extends _$TripSelectionEventCopyWithImpl<$Res, _$ToggleLongDestinationImpl>
    implements _$$ToggleLongDestinationImplCopyWith<$Res> {
  __$$ToggleLongDestinationImplCopyWithImpl(
    _$ToggleLongDestinationImpl _value,
    $Res Function(_$ToggleLongDestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleLongDestinationImpl implements _ToggleLongDestination {
  const _$ToggleLongDestinationImpl();

  @override
  String toString() {
    return 'TripSelectionEvent.toggleLongDestination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleLongDestinationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerId, bool isStartingGame) started,
    required TResult Function() toggleLongDestination,
    required TResult Function(Destination destination) toggleShortDestination,
    required TResult Function() confirmSelection,
  }) {
    return toggleLongDestination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerId, bool isStartingGame)? started,
    TResult? Function()? toggleLongDestination,
    TResult? Function(Destination destination)? toggleShortDestination,
    TResult? Function()? confirmSelection,
  }) {
    return toggleLongDestination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerId, bool isStartingGame)? started,
    TResult Function()? toggleLongDestination,
    TResult Function(Destination destination)? toggleShortDestination,
    TResult Function()? confirmSelection,
    required TResult orElse(),
  }) {
    if (toggleLongDestination != null) {
      return toggleLongDestination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleLongDestination value)
    toggleLongDestination,
    required TResult Function(_ToggleShortDestination value)
    toggleShortDestination,
    required TResult Function(_ConfirmSelection value) confirmSelection,
  }) {
    return toggleLongDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult? Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult? Function(_ConfirmSelection value)? confirmSelection,
  }) {
    return toggleLongDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult Function(_ConfirmSelection value)? confirmSelection,
    required TResult orElse(),
  }) {
    if (toggleLongDestination != null) {
      return toggleLongDestination(this);
    }
    return orElse();
  }
}

abstract class _ToggleLongDestination implements TripSelectionEvent {
  const factory _ToggleLongDestination() = _$ToggleLongDestinationImpl;
}

/// @nodoc
abstract class _$$ToggleShortDestinationImplCopyWith<$Res> {
  factory _$$ToggleShortDestinationImplCopyWith(
    _$ToggleShortDestinationImpl value,
    $Res Function(_$ToggleShortDestinationImpl) then,
  ) = __$$ToggleShortDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Destination destination});

  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$ToggleShortDestinationImplCopyWithImpl<$Res>
    extends _$TripSelectionEventCopyWithImpl<$Res, _$ToggleShortDestinationImpl>
    implements _$$ToggleShortDestinationImplCopyWith<$Res> {
  __$$ToggleShortDestinationImplCopyWithImpl(
    _$ToggleShortDestinationImpl _value,
    $Res Function(_$ToggleShortDestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? destination = null}) {
    return _then(
      _$ToggleShortDestinationImpl(
        null == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as Destination,
      ),
    );
  }

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }
}

/// @nodoc

class _$ToggleShortDestinationImpl implements _ToggleShortDestination {
  const _$ToggleShortDestinationImpl(this.destination);

  @override
  final Destination destination;

  @override
  String toString() {
    return 'TripSelectionEvent.toggleShortDestination(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleShortDestinationImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleShortDestinationImplCopyWith<_$ToggleShortDestinationImpl>
  get copyWith =>
      __$$ToggleShortDestinationImplCopyWithImpl<_$ToggleShortDestinationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerId, bool isStartingGame) started,
    required TResult Function() toggleLongDestination,
    required TResult Function(Destination destination) toggleShortDestination,
    required TResult Function() confirmSelection,
  }) {
    return toggleShortDestination(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerId, bool isStartingGame)? started,
    TResult? Function()? toggleLongDestination,
    TResult? Function(Destination destination)? toggleShortDestination,
    TResult? Function()? confirmSelection,
  }) {
    return toggleShortDestination?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerId, bool isStartingGame)? started,
    TResult Function()? toggleLongDestination,
    TResult Function(Destination destination)? toggleShortDestination,
    TResult Function()? confirmSelection,
    required TResult orElse(),
  }) {
    if (toggleShortDestination != null) {
      return toggleShortDestination(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleLongDestination value)
    toggleLongDestination,
    required TResult Function(_ToggleShortDestination value)
    toggleShortDestination,
    required TResult Function(_ConfirmSelection value) confirmSelection,
  }) {
    return toggleShortDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult? Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult? Function(_ConfirmSelection value)? confirmSelection,
  }) {
    return toggleShortDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult Function(_ConfirmSelection value)? confirmSelection,
    required TResult orElse(),
  }) {
    if (toggleShortDestination != null) {
      return toggleShortDestination(this);
    }
    return orElse();
  }
}

abstract class _ToggleShortDestination implements TripSelectionEvent {
  const factory _ToggleShortDestination(final Destination destination) =
      _$ToggleShortDestinationImpl;

  Destination get destination;

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleShortDestinationImplCopyWith<_$ToggleShortDestinationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmSelectionImplCopyWith<$Res> {
  factory _$$ConfirmSelectionImplCopyWith(
    _$ConfirmSelectionImpl value,
    $Res Function(_$ConfirmSelectionImpl) then,
  ) = __$$ConfirmSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmSelectionImplCopyWithImpl<$Res>
    extends _$TripSelectionEventCopyWithImpl<$Res, _$ConfirmSelectionImpl>
    implements _$$ConfirmSelectionImplCopyWith<$Res> {
  __$$ConfirmSelectionImplCopyWithImpl(
    _$ConfirmSelectionImpl _value,
    $Res Function(_$ConfirmSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmSelectionImpl implements _ConfirmSelection {
  const _$ConfirmSelectionImpl();

  @override
  String toString() {
    return 'TripSelectionEvent.confirmSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmSelectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerId, bool isStartingGame) started,
    required TResult Function() toggleLongDestination,
    required TResult Function(Destination destination) toggleShortDestination,
    required TResult Function() confirmSelection,
  }) {
    return confirmSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerId, bool isStartingGame)? started,
    TResult? Function()? toggleLongDestination,
    TResult? Function(Destination destination)? toggleShortDestination,
    TResult? Function()? confirmSelection,
  }) {
    return confirmSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerId, bool isStartingGame)? started,
    TResult Function()? toggleLongDestination,
    TResult Function(Destination destination)? toggleShortDestination,
    TResult Function()? confirmSelection,
    required TResult orElse(),
  }) {
    if (confirmSelection != null) {
      return confirmSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleLongDestination value)
    toggleLongDestination,
    required TResult Function(_ToggleShortDestination value)
    toggleShortDestination,
    required TResult Function(_ConfirmSelection value) confirmSelection,
  }) {
    return confirmSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult? Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult? Function(_ConfirmSelection value)? confirmSelection,
  }) {
    return confirmSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleLongDestination value)? toggleLongDestination,
    TResult Function(_ToggleShortDestination value)? toggleShortDestination,
    TResult Function(_ConfirmSelection value)? confirmSelection,
    required TResult orElse(),
  }) {
    if (confirmSelection != null) {
      return confirmSelection(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSelection implements TripSelectionEvent {
  const factory _ConfirmSelection() = _$ConfirmSelectionImpl;
}
