// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_trips_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerTripsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Destination destination) toggleDestination,
    required TResult Function() drawAdditionalDestinations,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Destination destination)? toggleDestination,
    TResult? Function()? drawAdditionalDestinations,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Destination destination)? toggleDestination,
    TResult Function()? drawAdditionalDestinations,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleDestination value) toggleDestination,
    required TResult Function(_DrawAdditionalDestinations value)
    drawAdditionalDestinations,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleDestination value)? toggleDestination,
    TResult? Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleDestination value)? toggleDestination,
    TResult Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerTripsEventCopyWith<$Res> {
  factory $PlayerTripsEventCopyWith(
    PlayerTripsEvent value,
    $Res Function(PlayerTripsEvent) then,
  ) = _$PlayerTripsEventCopyWithImpl<$Res, PlayerTripsEvent>;
}

/// @nodoc
class _$PlayerTripsEventCopyWithImpl<$Res, $Val extends PlayerTripsEvent>
    implements $PlayerTripsEventCopyWith<$Res> {
  _$PlayerTripsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerTripsEvent
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
    extends _$PlayerTripsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTripsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlayerTripsEvent.started()';
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
    required TResult Function(Destination destination) toggleDestination,
    required TResult Function() drawAdditionalDestinations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Destination destination)? toggleDestination,
    TResult? Function()? drawAdditionalDestinations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Destination destination)? toggleDestination,
    TResult Function()? drawAdditionalDestinations,
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
    required TResult Function(_ToggleDestination value) toggleDestination,
    required TResult Function(_DrawAdditionalDestinations value)
    drawAdditionalDestinations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleDestination value)? toggleDestination,
    TResult? Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleDestination value)? toggleDestination,
    TResult Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerTripsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ToggleDestinationImplCopyWith<$Res> {
  factory _$$ToggleDestinationImplCopyWith(
    _$ToggleDestinationImpl value,
    $Res Function(_$ToggleDestinationImpl) then,
  ) = __$$ToggleDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Destination destination});

  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$ToggleDestinationImplCopyWithImpl<$Res>
    extends _$PlayerTripsEventCopyWithImpl<$Res, _$ToggleDestinationImpl>
    implements _$$ToggleDestinationImplCopyWith<$Res> {
  __$$ToggleDestinationImplCopyWithImpl(
    _$ToggleDestinationImpl _value,
    $Res Function(_$ToggleDestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTripsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? destination = null}) {
    return _then(
      _$ToggleDestinationImpl(
        null == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as Destination,
      ),
    );
  }

  /// Create a copy of PlayerTripsEvent
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

class _$ToggleDestinationImpl implements _ToggleDestination {
  const _$ToggleDestinationImpl(this.destination);

  @override
  final Destination destination;

  @override
  String toString() {
    return 'PlayerTripsEvent.toggleDestination(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDestinationImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of PlayerTripsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDestinationImplCopyWith<_$ToggleDestinationImpl> get copyWith =>
      __$$ToggleDestinationImplCopyWithImpl<_$ToggleDestinationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Destination destination) toggleDestination,
    required TResult Function() drawAdditionalDestinations,
  }) {
    return toggleDestination(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Destination destination)? toggleDestination,
    TResult? Function()? drawAdditionalDestinations,
  }) {
    return toggleDestination?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Destination destination)? toggleDestination,
    TResult Function()? drawAdditionalDestinations,
    required TResult orElse(),
  }) {
    if (toggleDestination != null) {
      return toggleDestination(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleDestination value) toggleDestination,
    required TResult Function(_DrawAdditionalDestinations value)
    drawAdditionalDestinations,
  }) {
    return toggleDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleDestination value)? toggleDestination,
    TResult? Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
  }) {
    return toggleDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleDestination value)? toggleDestination,
    TResult Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
    required TResult orElse(),
  }) {
    if (toggleDestination != null) {
      return toggleDestination(this);
    }
    return orElse();
  }
}

abstract class _ToggleDestination implements PlayerTripsEvent {
  const factory _ToggleDestination(final Destination destination) =
      _$ToggleDestinationImpl;

  Destination get destination;

  /// Create a copy of PlayerTripsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleDestinationImplCopyWith<_$ToggleDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawAdditionalDestinationsImplCopyWith<$Res> {
  factory _$$DrawAdditionalDestinationsImplCopyWith(
    _$DrawAdditionalDestinationsImpl value,
    $Res Function(_$DrawAdditionalDestinationsImpl) then,
  ) = __$$DrawAdditionalDestinationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawAdditionalDestinationsImplCopyWithImpl<$Res>
    extends
        _$PlayerTripsEventCopyWithImpl<$Res, _$DrawAdditionalDestinationsImpl>
    implements _$$DrawAdditionalDestinationsImplCopyWith<$Res> {
  __$$DrawAdditionalDestinationsImplCopyWithImpl(
    _$DrawAdditionalDestinationsImpl _value,
    $Res Function(_$DrawAdditionalDestinationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTripsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DrawAdditionalDestinationsImpl implements _DrawAdditionalDestinations {
  const _$DrawAdditionalDestinationsImpl();

  @override
  String toString() {
    return 'PlayerTripsEvent.drawAdditionalDestinations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawAdditionalDestinationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Destination destination) toggleDestination,
    required TResult Function() drawAdditionalDestinations,
  }) {
    return drawAdditionalDestinations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Destination destination)? toggleDestination,
    TResult? Function()? drawAdditionalDestinations,
  }) {
    return drawAdditionalDestinations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Destination destination)? toggleDestination,
    TResult Function()? drawAdditionalDestinations,
    required TResult orElse(),
  }) {
    if (drawAdditionalDestinations != null) {
      return drawAdditionalDestinations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleDestination value) toggleDestination,
    required TResult Function(_DrawAdditionalDestinations value)
    drawAdditionalDestinations,
  }) {
    return drawAdditionalDestinations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleDestination value)? toggleDestination,
    TResult? Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
  }) {
    return drawAdditionalDestinations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleDestination value)? toggleDestination,
    TResult Function(_DrawAdditionalDestinations value)?
    drawAdditionalDestinations,
    required TResult orElse(),
  }) {
    if (drawAdditionalDestinations != null) {
      return drawAdditionalDestinations(this);
    }
    return orElse();
  }
}

abstract class _DrawAdditionalDestinations implements PlayerTripsEvent {
  const factory _DrawAdditionalDestinations() =
      _$DrawAdditionalDestinationsImpl;
}
