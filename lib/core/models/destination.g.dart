// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      departureCityId: (json['did'] as num).toInt(),
      arrivalCityId: (json['aid'] as num).toInt(),
      departureCityName: json['dname'] as String,
      arrivalCityName: json['aname'] as String,
      points: (json['nb'] as num).toInt(),
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      'did': instance.departureCityId,
      'aid': instance.arrivalCityId,
      'dname': instance.departureCityName,
      'aname': instance.arrivalCityName,
      'nb': instance.points,
    };
