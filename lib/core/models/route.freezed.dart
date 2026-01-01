// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  int get id => throw _privateConstructorUsedError;
  int get departureCityId => throw _privateConstructorUsedError;
  int get arrivalCityId => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  @JsonKey(name: "nbLocos")
  int get locomotiveCount => throw _privateConstructorUsedError;
  bool get isGrey => throw _privateConstructorUsedError;
  bool get isDouble => throw _privateConstructorUsedError;
  bool get isTunnel => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call({
    int id,
    int departureCityId,
    int arrivalCityId,
    int length,
    @JsonKey(name: "nbLocos") int locomotiveCount,
    bool isGrey,
    bool isDouble,
    bool isTunnel,
  });
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureCityId = null,
    Object? arrivalCityId = null,
    Object? length = null,
    Object? locomotiveCount = null,
    Object? isGrey = null,
    Object? isDouble = null,
    Object? isTunnel = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            departureCityId: null == departureCityId
                ? _value.departureCityId
                : departureCityId // ignore: cast_nullable_to_non_nullable
                      as int,
            arrivalCityId: null == arrivalCityId
                ? _value.arrivalCityId
                : arrivalCityId // ignore: cast_nullable_to_non_nullable
                      as int,
            length: null == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                      as int,
            locomotiveCount: null == locomotiveCount
                ? _value.locomotiveCount
                : locomotiveCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isGrey: null == isGrey
                ? _value.isGrey
                : isGrey // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDouble: null == isDouble
                ? _value.isDouble
                : isDouble // ignore: cast_nullable_to_non_nullable
                      as bool,
            isTunnel: null == isTunnel
                ? _value.isTunnel
                : isTunnel // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
    _$RouteImpl value,
    $Res Function(_$RouteImpl) then,
  ) = __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int departureCityId,
    int arrivalCityId,
    int length,
    @JsonKey(name: "nbLocos") int locomotiveCount,
    bool isGrey,
    bool isDouble,
    bool isTunnel,
  });
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
    _$RouteImpl _value,
    $Res Function(_$RouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureCityId = null,
    Object? arrivalCityId = null,
    Object? length = null,
    Object? locomotiveCount = null,
    Object? isGrey = null,
    Object? isDouble = null,
    Object? isTunnel = null,
  }) {
    return _then(
      _$RouteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        departureCityId: null == departureCityId
            ? _value.departureCityId
            : departureCityId // ignore: cast_nullable_to_non_nullable
                  as int,
        arrivalCityId: null == arrivalCityId
            ? _value.arrivalCityId
            : arrivalCityId // ignore: cast_nullable_to_non_nullable
                  as int,
        length: null == length
            ? _value.length
            : length // ignore: cast_nullable_to_non_nullable
                  as int,
        locomotiveCount: null == locomotiveCount
            ? _value.locomotiveCount
            : locomotiveCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isGrey: null == isGrey
            ? _value.isGrey
            : isGrey // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDouble: null == isDouble
            ? _value.isDouble
            : isDouble // ignore: cast_nullable_to_non_nullable
                  as bool,
        isTunnel: null == isTunnel
            ? _value.isTunnel
            : isTunnel // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl({
    required this.id,
    required this.departureCityId,
    required this.arrivalCityId,
    required this.length,
    @JsonKey(name: "nbLocos") required this.locomotiveCount,
    required this.isGrey,
    required this.isDouble,
    required this.isTunnel,
  });

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final int id;
  @override
  final int departureCityId;
  @override
  final int arrivalCityId;
  @override
  final int length;
  @override
  @JsonKey(name: "nbLocos")
  final int locomotiveCount;
  @override
  final bool isGrey;
  @override
  final bool isDouble;
  @override
  final bool isTunnel;

  @override
  String toString() {
    return 'Route(id: $id, departureCityId: $departureCityId, arrivalCityId: $arrivalCityId, length: $length, locomotiveCount: $locomotiveCount, isGrey: $isGrey, isDouble: $isDouble, isTunnel: $isTunnel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departureCityId, departureCityId) ||
                other.departureCityId == departureCityId) &&
            (identical(other.arrivalCityId, arrivalCityId) ||
                other.arrivalCityId == arrivalCityId) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.locomotiveCount, locomotiveCount) ||
                other.locomotiveCount == locomotiveCount) &&
            (identical(other.isGrey, isGrey) || other.isGrey == isGrey) &&
            (identical(other.isDouble, isDouble) ||
                other.isDouble == isDouble) &&
            (identical(other.isTunnel, isTunnel) ||
                other.isTunnel == isTunnel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    departureCityId,
    arrivalCityId,
    length,
    locomotiveCount,
    isGrey,
    isDouble,
    isTunnel,
  );

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(this);
  }
}

abstract class _Route implements Route {
  const factory _Route({
    required final int id,
    required final int departureCityId,
    required final int arrivalCityId,
    required final int length,
    @JsonKey(name: "nbLocos") required final int locomotiveCount,
    required final bool isGrey,
    required final bool isDouble,
    required final bool isTunnel,
  }) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  int get id;
  @override
  int get departureCityId;
  @override
  int get arrivalCityId;
  @override
  int get length;
  @override
  @JsonKey(name: "nbLocos")
  int get locomotiveCount;
  @override
  bool get isGrey;
  @override
  bool get isDouble;
  @override
  bool get isTunnel;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
