// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num).toInt(),
      apiId: (json['apiId'] as num).toInt(),
      api_id: (json['api_id'] as num).toInt(),
      countryId: (json['countryId'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'apiId': instance.apiId,
      'api_id': instance.api_id,
      'countryId': instance.countryId,
      'name': instance.name,
      'code': instance.code,
    };
