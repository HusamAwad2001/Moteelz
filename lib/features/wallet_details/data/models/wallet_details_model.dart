import 'package:json_annotation/json_annotation.dart';

part 'wallet_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WalletDetailsModel {
  final int id;
  @JsonKey(name: 'wallet_category_id')
  final int walletCategoryId;
  final String name;
  final int order;
  final int days;
  @JsonKey(name: 'available_days')
  final int availableDays;
  @JsonKey(name: 'numbers_of_days')
  final List<NumberOfDays> numbersOfDays;
  final double price;
  final int occupancy;
  @JsonKey(name: 'min_unit_price')
  final double minUnitPrice;
  @JsonKey(name: 'max_unit_price')
  final double maxUnitPrice;
  final String currency;
  @JsonKey(name: 'tax_percent')
  final double taxPercent;
  final bool active;
  final int type;
  final String description;
  @JsonKey(name: 'wallet_image')
  final String walletImage;
  @JsonKey(name: 'expiry_date')
  final String expiryDate;
  @JsonKey(name: 'wallet_category')
  final WalletCategory walletCategory;
  @JsonKey(name: 'features_favorites')
  final List<Feature> featuresFavorites;
  @JsonKey(name: 'Wallet_features')
  final List<Feature> walletFeatures;
  final List<Country> countries;
  final List<City> cities;
  @JsonKey(name: 'accommodation_types')
  final dynamic accommodationTypes;

  WalletDetailsModel({
    required this.id,
    required this.walletCategoryId,
    required this.name,
    required this.order,
    required this.days,
    required this.availableDays,
    required this.numbersOfDays,
    required this.price,
    required this.occupancy,
    required this.minUnitPrice,
    required this.maxUnitPrice,
    required this.currency,
    required this.taxPercent,
    required this.active,
    required this.type,
    required this.description,
    required this.walletImage,
    required this.expiryDate,
    required this.walletCategory,
    required this.featuresFavorites,
    required this.walletFeatures,
    required this.countries,
    required this.cities,
    this.accommodationTypes,
  });

  factory WalletDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$WalletDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDetailsModelToJson(this);
}

@JsonSerializable()
class NumberOfDays {
  final String days;
  @JsonKey(name: 'expiry_days')
  final String expiryDays;
  @JsonKey(name: 'expiry_date')
  final String expiryDate;

  NumberOfDays({
    required this.days,
    required this.expiryDays,
    required this.expiryDate,
  });

  factory NumberOfDays.fromJson(Map<String, dynamic> json) =>
      _$NumberOfDaysFromJson(json);

  Map<String, dynamic> toJson() => _$NumberOfDaysToJson(this);
}

@JsonSerializable()
class WalletCategory {
  final int id;
  final String name;
  final String icon;

  WalletCategory({required this.id, required this.name, required this.icon});

  factory WalletCategory.fromJson(Map<String, dynamic> json) =>
      _$WalletCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCategoryToJson(this);
}

@JsonSerializable()
class Feature {
  final String name;

  Feature({required this.name});

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}

@JsonSerializable()
class Country {
  final int id;
  final int apiId;
  final String name;
  final String iso;

  Country({
    required this.id,
    required this.apiId,
    required this.name,
    required this.iso,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

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
