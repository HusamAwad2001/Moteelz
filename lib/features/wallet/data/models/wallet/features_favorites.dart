import 'package:json_annotation/json_annotation.dart';

part '../features_favorites.g.dart';

@JsonSerializable()
class FeaturesFavorites {
  final String? name;

  const FeaturesFavorites({this.name});

  factory FeaturesFavorites.fromJson(Map<String, dynamic> json) =>
      _$FeaturesFavoritesFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturesFavoritesToJson(this);
}
