// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerDestination {
  Destination get destination => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerDestinationCopyWith<PlayerDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDestinationCopyWith<$Res> {
  factory $PlayerDestinationCopyWith(
    PlayerDestination value,
    $Res Function(PlayerDestination) then,
  ) = _$PlayerDestinationCopyWithImpl<$Res, PlayerDestination>;
  @useResult
  $Res call({Destination destination, bool isCompleted});

  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$PlayerDestinationCopyWithImpl<$Res, $Val extends PlayerDestination>
    implements $PlayerDestinationCopyWith<$Res> {
  _$PlayerDestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? destination = null, Object? isCompleted = null}) {
    return _then(
      _value.copyWith(
            destination: null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                      as Destination,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerDestinationImplCopyWith<$Res>
    implements $PlayerDestinationCopyWith<$Res> {
  factory _$$PlayerDestinationImplCopyWith(
    _$PlayerDestinationImpl value,
    $Res Function(_$PlayerDestinationImpl) then,
  ) = __$$PlayerDestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Destination destination, bool isCompleted});

  @override
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$PlayerDestinationImplCopyWithImpl<$Res>
    extends _$PlayerDestinationCopyWithImpl<$Res, _$PlayerDestinationImpl>
    implements _$$PlayerDestinationImplCopyWith<$Res> {
  __$$PlayerDestinationImplCopyWithImpl(
    _$PlayerDestinationImpl _value,
    $Res Function(_$PlayerDestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? destination = null, Object? isCompleted = null}) {
    return _then(
      _$PlayerDestinationImpl(
        destination: null == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as Destination,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PlayerDestinationImpl implements _PlayerDestination {
  const _$PlayerDestinationImpl({
    required this.destination,
    this.isCompleted = false,
  });

  @override
  final Destination destination;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'PlayerDestination(destination: $destination, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDestinationImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination, isCompleted);

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDestinationImplCopyWith<_$PlayerDestinationImpl> get copyWith =>
      __$$PlayerDestinationImplCopyWithImpl<_$PlayerDestinationImpl>(
        this,
        _$identity,
      );
}

abstract class _PlayerDestination implements PlayerDestination {
  const factory _PlayerDestination({
    required final Destination destination,
    final bool isCompleted,
  }) = _$PlayerDestinationImpl;

  @override
  Destination get destination;
  @override
  bool get isCompleted;

  /// Create a copy of PlayerDestination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerDestinationImplCopyWith<_$PlayerDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
