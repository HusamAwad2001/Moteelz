// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDetailsModel _$WalletDetailsModelFromJson(Map<String, dynamic> json) =>
    WalletDetailsModel(
      id: (json['id'] as num).toInt(),
      walletCategoryId: (json['wallet_category_id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      days: (json['days'] as num).toInt(),
      availableDays: (json['available_days'] as num).toInt(),
      numbersOfDays: (json['numbers_of_days'] as List<dynamic>)
          .map((e) => NumberOfDays.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
      occupancy: (json['occupancy'] as num).toInt(),
      minUnitPrice: (json['min_unit_price'] as num).toDouble(),
      maxUnitPrice: (json['max_unit_price'] as num).toDouble(),
      currency: json['currency'] as String,
      taxPercent: (json['tax_percent'] as num).toDouble(),
      active: json['active'] as bool,
      type: (json['type'] as num).toInt(),
      description: json['description'] as String,
      walletImage: json['wallet_image'] as String,
      expiryDate: json['expiry_date'] as String,
      walletCategory: WalletCategory.fromJson(
          json['wallet_category'] as Map<String, dynamic>),
      featuresFavorites: (json['features_favorites'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletFeatures: (json['Wallet_features'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      cities: (json['cities'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      accommodationTypes: json['accommodation_types'],
    );

Map<String, dynamic> _$WalletDetailsModelToJson(WalletDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet_category_id': instance.walletCategoryId,
      'name': instance.name,
      'order': instance.order,
      'days': instance.days,
      'available_days': instance.availableDays,
      'numbers_of_days': instance.numbersOfDays.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'occupancy': instance.occupancy,
      'min_unit_price': instance.minUnitPrice,
      'max_unit_price': instance.maxUnitPrice,
      'currency': instance.currency,
      'tax_percent': instance.taxPercent,
      'active': instance.active,
      'type': instance.type,
      'description': instance.description,
      'wallet_image': instance.walletImage,
      'expiry_date': instance.expiryDate,
      'wallet_category': instance.walletCategory.toJson(),
      'features_favorites':
          instance.featuresFavorites.map((e) => e.toJson()).toList(),
      'Wallet_features':
          instance.walletFeatures.map((e) => e.toJson()).toList(),
      'countries': instance.countries.map((e) => e.toJson()).toList(),
      'cities': instance.cities.map((e) => e.toJson()).toList(),
      'accommodation_types': instance.accommodationTypes,
    };

NumberOfDays _$NumberOfDaysFromJson(Map<String, dynamic> json) => NumberOfDays(
      days: json['days'] as String,
      expiryDays: json['expiry_days'] as String,
      expiryDate: json['expiry_date'] as String,
    );

Map<String, dynamic> _$NumberOfDaysToJson(NumberOfDays instance) =>
    <String, dynamic>{
      'days': instance.days,
      'expiry_days': instance.expiryDays,
      'expiry_date': instance.expiryDate,
    };

WalletCategory _$WalletCategoryFromJson(Map<String, dynamic> json) =>
    WalletCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WalletCategoryToJson(WalletCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      name: json['name'] as String,
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'name': instance.name,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: (json['id'] as num).toInt(),
      apiId: (json['apiId'] as num).toInt(),
      name: json['name'] as String,
      iso: json['iso'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'apiId': instance.apiId,
      'name': instance.name,
      'iso': instance.iso,
    };

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
