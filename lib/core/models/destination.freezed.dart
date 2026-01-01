// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
mixin _$Destination {
  @JsonKey(name: "did")
  int get departureCityId => throw _privateConstructorUsedError;
  @JsonKey(name: "aid")
  int get arrivalCityId => throw _privateConstructorUsedError;
  @JsonKey(name: "dname")
  String get departureCityName => throw _privateConstructorUsedError;
  @JsonKey(name: "aname")
  String get arrivalCityName => throw _privateConstructorUsedError;
  @JsonKey(name: "nb")
  int get points => throw _privateConstructorUsedError;

  /// Serializes this Destination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
    Destination value,
    $Res Function(Destination) then,
  ) = _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call({
    @JsonKey(name: "did") int departureCityId,
    @JsonKey(name: "aid") int arrivalCityId,
    @JsonKey(name: "dname") String departureCityName,
    @JsonKey(name: "aname") String arrivalCityName,
    @JsonKey(name: "nb") int points,
  });
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureCityId = null,
    Object? arrivalCityId = null,
    Object? departureCityName = null,
    Object? arrivalCityName = null,
    Object? points = null,
  }) {
    return _then(
      _value.copyWith(
            departureCityId: null == departureCityId
                ? _value.departureCityId
                : departureCityId // ignore: cast_nullable_to_non_nullable
                      as int,
            arrivalCityId: null == arrivalCityId
                ? _value.arrivalCityId
                : arrivalCityId // ignore: cast_nullable_to_non_nullable
                      as int,
            departureCityName: null == departureCityName
                ? _value.departureCityName
                : departureCityName // ignore: cast_nullable_to_non_nullable
                      as String,
            arrivalCityName: null == arrivalCityName
                ? _value.arrivalCityName
                : arrivalCityName // ignore: cast_nullable_to_non_nullable
                      as String,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DestinationImplCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$DestinationImplCopyWith(
    _$DestinationImpl value,
    $Res Function(_$DestinationImpl) then,
  ) = __$$DestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "did") int departureCityId,
    @JsonKey(name: "aid") int arrivalCityId,
    @JsonKey(name: "dname") String departureCityName,
    @JsonKey(name: "aname") String arrivalCityName,
    @JsonKey(name: "nb") int points,
  });
}

/// @nodoc
class __$$DestinationImplCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$DestinationImpl>
    implements _$$DestinationImplCopyWith<$Res> {
  __$$DestinationImplCopyWithImpl(
    _$DestinationImpl _value,
    $Res Function(_$DestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureCityId = null,
    Object? arrivalCityId = null,
    Object? departureCityName = null,
    Object? arrivalCityName = null,
    Object? points = null,
  }) {
    return _then(
      _$DestinationImpl(
        departureCityId: null == departureCityId
            ? _value.departureCityId
            : departureCityId // ignore: cast_nullable_to_non_nullable
                  as int,
        arrivalCityId: null == arrivalCityId
            ? _value.arrivalCityId
            : arrivalCityId // ignore: cast_nullable_to_non_nullable
                  as int,
        departureCityName: null == departureCityName
            ? _value.departureCityName
            : departureCityName // ignore: cast_nullable_to_non_nullable
                  as String,
        arrivalCityName: null == arrivalCityName
            ? _value.arrivalCityName
            : arrivalCityName // ignore: cast_nullable_to_non_nullable
                  as String,
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationImpl implements _Destination {
  const _$DestinationImpl({
    @JsonKey(name: "did") required this.departureCityId,
    @JsonKey(name: "aid") required this.arrivalCityId,
    @JsonKey(name: "dname") required this.departureCityName,
    @JsonKey(name: "aname") required this.arrivalCityName,
    @JsonKey(name: "nb") required this.points,
  });

  factory _$DestinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationImplFromJson(json);

  @override
  @JsonKey(name: "did")
  final int departureCityId;
  @override
  @JsonKey(name: "aid")
  final int arrivalCityId;
  @override
  @JsonKey(name: "dname")
  final String departureCityName;
  @override
  @JsonKey(name: "aname")
  final String arrivalCityName;
  @override
  @JsonKey(name: "nb")
  final int points;

  @override
  String toString() {
    return 'Destination(departureCityId: $departureCityId, arrivalCityId: $arrivalCityId, departureCityName: $departureCityName, arrivalCityName: $arrivalCityName, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationImpl &&
            (identical(other.departureCityId, departureCityId) ||
                other.departureCityId == departureCityId) &&
            (identical(other.arrivalCityId, arrivalCityId) ||
                other.arrivalCityId == arrivalCityId) &&
            (identical(other.departureCityName, departureCityName) ||
                other.departureCityName == departureCityName) &&
            (identical(other.arrivalCityName, arrivalCityName) ||
                other.arrivalCityName == arrivalCityName) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    departureCityId,
    arrivalCityId,
    departureCityName,
    arrivalCityName,
    points,
  );

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      __$$DestinationImplCopyWithImpl<_$DestinationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationImplToJson(this);
  }
}

abstract class _Destination implements Destination {
  const factory _Destination({
    @JsonKey(name: "did") required final int departureCityId,
    @JsonKey(name: "aid") required final int arrivalCityId,
    @JsonKey(name: "dname") required final String departureCityName,
    @JsonKey(name: "aname") required final String arrivalCityName,
    @JsonKey(name: "nb") required final int points,
  }) = _$DestinationImpl;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$DestinationImpl.fromJson;

  @override
  @JsonKey(name: "did")
  int get departureCityId;
  @override
  @JsonKey(name: "aid")
  int get arrivalCityId;
  @override
  @JsonKey(name: "dname")
  String get departureCityName;
  @override
  @JsonKey(name: "aname")
  String get arrivalCityName;
  @override
  @JsonKey(name: "nb")
  int get points;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
