import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  final int id;
  final int apiId;
  final int api_id;
  final int countryId;
  final String name;
  final String code;

  City({
    required this.id,
    required this.apiId,
    required this.api_id,
    required this.countryId,
    required this.name,
    required this.code,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
