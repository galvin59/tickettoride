// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerSelectionState {
  List<Player> get allPlayers => throw _privateConstructorUsedError;
  List<String> get selectedPlayerIds => throw _privateConstructorUsedError;
  String get currentPlayerName => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PlayerSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerSelectionStateCopyWith<PlayerSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSelectionStateCopyWith<$Res> {
  factory $PlayerSelectionStateCopyWith(
    PlayerSelectionState value,
    $Res Function(PlayerSelectionState) then,
  ) = _$PlayerSelectionStateCopyWithImpl<$Res, PlayerSelectionState>;
  @useResult
  $Res call({
    List<Player> allPlayers,
    List<String> selectedPlayerIds,
    String currentPlayerName,
    bool isLoading,
    String? errorMessage,
  });
}

/// @nodoc
class _$PlayerSelectionStateCopyWithImpl<
  $Res,
  $Val extends PlayerSelectionState
>
    implements $PlayerSelectionStateCopyWith<$Res> {
  _$PlayerSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPlayers = null,
    Object? selectedPlayerIds = null,
    Object? currentPlayerName = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            allPlayers: null == allPlayers
                ? _value.allPlayers
                : allPlayers // ignore: cast_nullable_to_non_nullable
                      as List<Player>,
            selectedPlayerIds: null == selectedPlayerIds
                ? _value.selectedPlayerIds
                : selectedPlayerIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentPlayerName: null == currentPlayerName
                ? _value.currentPlayerName
                : currentPlayerName // ignore: cast_nullable_to_non_nullable
                      as String,
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
}

/// @nodoc
abstract class _$$PlayerSelectionStateImplCopyWith<$Res>
    implements $PlayerSelectionStateCopyWith<$Res> {
  factory _$$PlayerSelectionStateImplCopyWith(
    _$PlayerSelectionStateImpl value,
    $Res Function(_$PlayerSelectionStateImpl) then,
  ) = __$$PlayerSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Player> allPlayers,
    List<String> selectedPlayerIds,
    String currentPlayerName,
    bool isLoading,
    String? errorMessage,
  });
}

/// @nodoc
class __$$PlayerSelectionStateImplCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res, _$PlayerSelectionStateImpl>
    implements _$$PlayerSelectionStateImplCopyWith<$Res> {
  __$$PlayerSelectionStateImplCopyWithImpl(
    _$PlayerSelectionStateImpl _value,
    $Res Function(_$PlayerSelectionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPlayers = null,
    Object? selectedPlayerIds = null,
    Object? currentPlayerName = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$PlayerSelectionStateImpl(
        allPlayers: null == allPlayers
            ? _value._allPlayers
            : allPlayers // ignore: cast_nullable_to_non_nullable
                  as List<Player>,
        selectedPlayerIds: null == selectedPlayerIds
            ? _value._selectedPlayerIds
            : selectedPlayerIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentPlayerName: null == currentPlayerName
            ? _value.currentPlayerName
            : currentPlayerName // ignore: cast_nullable_to_non_nullable
                  as String,
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

class _$PlayerSelectionStateImpl implements _PlayerSelectionState {
  const _$PlayerSelectionStateImpl({
    final List<Player> allPlayers = const [],
    final List<String> selectedPlayerIds = const [],
    this.currentPlayerName = "",
    this.isLoading = false,
    this.errorMessage,
  }) : _allPlayers = allPlayers,
       _selectedPlayerIds = selectedPlayerIds;

  final List<Player> _allPlayers;
  @override
  @JsonKey()
  List<Player> get allPlayers {
    if (_allPlayers is EqualUnmodifiableListView) return _allPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlayers);
  }

  final List<String> _selectedPlayerIds;
  @override
  @JsonKey()
  List<String> get selectedPlayerIds {
    if (_selectedPlayerIds is EqualUnmodifiableListView)
      return _selectedPlayerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPlayerIds);
  }

  @override
  @JsonKey()
  final String currentPlayerName;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PlayerSelectionState(allPlayers: $allPlayers, selectedPlayerIds: $selectedPlayerIds, currentPlayerName: $currentPlayerName, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerSelectionStateImpl &&
            const DeepCollectionEquality().equals(
              other._allPlayers,
              _allPlayers,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedPlayerIds,
              _selectedPlayerIds,
            ) &&
            (identical(other.currentPlayerName, currentPlayerName) ||
                other.currentPlayerName == currentPlayerName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_allPlayers),
    const DeepCollectionEquality().hash(_selectedPlayerIds),
    currentPlayerName,
    isLoading,
    errorMessage,
  );

  /// Create a copy of PlayerSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerSelectionStateImplCopyWith<_$PlayerSelectionStateImpl>
  get copyWith =>
      __$$PlayerSelectionStateImplCopyWithImpl<_$PlayerSelectionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PlayerSelectionState implements PlayerSelectionState {
  const factory _PlayerSelectionState({
    final List<Player> allPlayers,
    final List<String> selectedPlayerIds,
    final String currentPlayerName,
    final bool isLoading,
    final String? errorMessage,
  }) = _$PlayerSelectionStateImpl;

  @override
  List<Player> get allPlayers;
  @override
  List<String> get selectedPlayerIds;
  @override
  String get currentPlayerName;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of PlayerSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerSelectionStateImplCopyWith<_$PlayerSelectionStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
