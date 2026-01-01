// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripSelectionState {
  String get playerId => throw _privateConstructorUsedError;
  bool get isStartingGame => throw _privateConstructorUsedError;
  Destination? get longDestination => throw _privateConstructorUsedError;
  List<Destination> get shortDestinations => throw _privateConstructorUsedError;
  List<Destination> get selectedShortDestinations =>
      throw _privateConstructorUsedError;
  bool get hasSelectedLongDestination => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripSelectionStateCopyWith<TripSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSelectionStateCopyWith<$Res> {
  factory $TripSelectionStateCopyWith(
    TripSelectionState value,
    $Res Function(TripSelectionState) then,
  ) = _$TripSelectionStateCopyWithImpl<$Res, TripSelectionState>;
  @useResult
  $Res call({
    String playerId,
    bool isStartingGame,
    Destination? longDestination,
    List<Destination> shortDestinations,
    List<Destination> selectedShortDestinations,
    bool hasSelectedLongDestination,
    bool isLoading,
    String? errorMessage,
  });

  $DestinationCopyWith<$Res>? get longDestination;
}

/// @nodoc
class _$TripSelectionStateCopyWithImpl<$Res, $Val extends TripSelectionState>
    implements $TripSelectionStateCopyWith<$Res> {
  _$TripSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? isStartingGame = null,
    Object? longDestination = freezed,
    Object? shortDestinations = null,
    Object? selectedShortDestinations = null,
    Object? hasSelectedLongDestination = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            playerId: null == playerId
                ? _value.playerId
                : playerId // ignore: cast_nullable_to_non_nullable
                      as String,
            isStartingGame: null == isStartingGame
                ? _value.isStartingGame
                : isStartingGame // ignore: cast_nullable_to_non_nullable
                      as bool,
            longDestination: freezed == longDestination
                ? _value.longDestination
                : longDestination // ignore: cast_nullable_to_non_nullable
                      as Destination?,
            shortDestinations: null == shortDestinations
                ? _value.shortDestinations
                : shortDestinations // ignore: cast_nullable_to_non_nullable
                      as List<Destination>,
            selectedShortDestinations: null == selectedShortDestinations
                ? _value.selectedShortDestinations
                : selectedShortDestinations // ignore: cast_nullable_to_non_nullable
                      as List<Destination>,
            hasSelectedLongDestination: null == hasSelectedLongDestination
                ? _value.hasSelectedLongDestination
                : hasSelectedLongDestination // ignore: cast_nullable_to_non_nullable
                      as bool,
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

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res>? get longDestination {
    if (_value.longDestination == null) {
      return null;
    }

    return $DestinationCopyWith<$Res>(_value.longDestination!, (value) {
      return _then(_value.copyWith(longDestination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripSelectionStateImplCopyWith<$Res>
    implements $TripSelectionStateCopyWith<$Res> {
  factory _$$TripSelectionStateImplCopyWith(
    _$TripSelectionStateImpl value,
    $Res Function(_$TripSelectionStateImpl) then,
  ) = __$$TripSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String playerId,
    bool isStartingGame,
    Destination? longDestination,
    List<Destination> shortDestinations,
    List<Destination> selectedShortDestinations,
    bool hasSelectedLongDestination,
    bool isLoading,
    String? errorMessage,
  });

  @override
  $DestinationCopyWith<$Res>? get longDestination;
}

/// @nodoc
class __$$TripSelectionStateImplCopyWithImpl<$Res>
    extends _$TripSelectionStateCopyWithImpl<$Res, _$TripSelectionStateImpl>
    implements _$$TripSelectionStateImplCopyWith<$Res> {
  __$$TripSelectionStateImplCopyWithImpl(
    _$TripSelectionStateImpl _value,
    $Res Function(_$TripSelectionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? isStartingGame = null,
    Object? longDestination = freezed,
    Object? shortDestinations = null,
    Object? selectedShortDestinations = null,
    Object? hasSelectedLongDestination = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$TripSelectionStateImpl(
        playerId: null == playerId
            ? _value.playerId
            : playerId // ignore: cast_nullable_to_non_nullable
                  as String,
        isStartingGame: null == isStartingGame
            ? _value.isStartingGame
            : isStartingGame // ignore: cast_nullable_to_non_nullable
                  as bool,
        longDestination: freezed == longDestination
            ? _value.longDestination
            : longDestination // ignore: cast_nullable_to_non_nullable
                  as Destination?,
        shortDestinations: null == shortDestinations
            ? _value._shortDestinations
            : shortDestinations // ignore: cast_nullable_to_non_nullable
                  as List<Destination>,
        selectedShortDestinations: null == selectedShortDestinations
            ? _value._selectedShortDestinations
            : selectedShortDestinations // ignore: cast_nullable_to_non_nullable
                  as List<Destination>,
        hasSelectedLongDestination: null == hasSelectedLongDestination
            ? _value.hasSelectedLongDestination
            : hasSelectedLongDestination // ignore: cast_nullable_to_non_nullable
                  as bool,
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

class _$TripSelectionStateImpl implements _TripSelectionState {
  const _$TripSelectionStateImpl({
    required this.playerId,
    required this.isStartingGame,
    this.longDestination,
    final List<Destination> shortDestinations = const [],
    final List<Destination> selectedShortDestinations = const [],
    this.hasSelectedLongDestination = false,
    this.isLoading = false,
    this.errorMessage,
  }) : _shortDestinations = shortDestinations,
       _selectedShortDestinations = selectedShortDestinations;

  @override
  final String playerId;
  @override
  final bool isStartingGame;
  @override
  final Destination? longDestination;
  final List<Destination> _shortDestinations;
  @override
  @JsonKey()
  List<Destination> get shortDestinations {
    if (_shortDestinations is EqualUnmodifiableListView)
      return _shortDestinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortDestinations);
  }

  final List<Destination> _selectedShortDestinations;
  @override
  @JsonKey()
  List<Destination> get selectedShortDestinations {
    if (_selectedShortDestinations is EqualUnmodifiableListView)
      return _selectedShortDestinations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedShortDestinations);
  }

  @override
  @JsonKey()
  final bool hasSelectedLongDestination;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripSelectionState(playerId: $playerId, isStartingGame: $isStartingGame, longDestination: $longDestination, shortDestinations: $shortDestinations, selectedShortDestinations: $selectedShortDestinations, hasSelectedLongDestination: $hasSelectedLongDestination, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSelectionStateImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.isStartingGame, isStartingGame) ||
                other.isStartingGame == isStartingGame) &&
            (identical(other.longDestination, longDestination) ||
                other.longDestination == longDestination) &&
            const DeepCollectionEquality().equals(
              other._shortDestinations,
              _shortDestinations,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedShortDestinations,
              _selectedShortDestinations,
            ) &&
            (identical(
                  other.hasSelectedLongDestination,
                  hasSelectedLongDestination,
                ) ||
                other.hasSelectedLongDestination ==
                    hasSelectedLongDestination) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    playerId,
    isStartingGame,
    longDestination,
    const DeepCollectionEquality().hash(_shortDestinations),
    const DeepCollectionEquality().hash(_selectedShortDestinations),
    hasSelectedLongDestination,
    isLoading,
    errorMessage,
  );

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSelectionStateImplCopyWith<_$TripSelectionStateImpl> get copyWith =>
      __$$TripSelectionStateImplCopyWithImpl<_$TripSelectionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TripSelectionState implements TripSelectionState {
  const factory _TripSelectionState({
    required final String playerId,
    required final bool isStartingGame,
    final Destination? longDestination,
    final List<Destination> shortDestinations,
    final List<Destination> selectedShortDestinations,
    final bool hasSelectedLongDestination,
    final bool isLoading,
    final String? errorMessage,
  }) = _$TripSelectionStateImpl;

  @override
  String get playerId;
  @override
  bool get isStartingGame;
  @override
  Destination? get longDestination;
  @override
  List<Destination> get shortDestinations;
  @override
  List<Destination> get selectedShortDestinations;
  @override
  bool get hasSelectedLongDestination;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of TripSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripSelectionStateImplCopyWith<_$TripSelectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
