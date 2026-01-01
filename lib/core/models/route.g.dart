// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
  id: (json['id'] as num).toInt(),
  departureCityId: (json['departureCityId'] as num).toInt(),
  arrivalCityId: (json['arrivalCityId'] as num).toInt(),
  length: (json['length'] as num).toInt(),
  locomotiveCount: (json['nbLocos'] as num).toInt(),
  isGrey: json['isGrey'] as bool,
  isDouble: json['isDouble'] as bool,
  isTunnel: json['isTunnel'] as bool,
);

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'departureCityId': instance.departureCityId,
      'arrivalCityId': instance.arrivalCityId,
      'length': instance.length,
      'nbLocos': instance.locomotiveCount,
      'isGrey': instance.isGrey,
      'isDouble': instance.isDouble,
      'isTunnel': instance.isTunnel,
    };
