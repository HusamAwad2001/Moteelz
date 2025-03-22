// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDetailsModel _$WalletDetailsModelFromJson(Map<String, dynamic> json) =>
    WalletDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      walletCategoryId: (json['wallet_category_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      days: (json['days'] as num?)?.toInt(),
      availableDays: (json['available_days'] as num?)?.toInt(),
      numbersOfDays: (json['numbers_of_days'] as List<dynamic>?)
          ?.map((e) => NumberOfDays.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as num?,
      occupancy: (json['occupancy'] as num?)?.toInt(),
      minUnitPrice: (json['min_unit_price'] as num?)?.toDouble(),
      maxUnitPrice: (json['max_unit_price'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      taxPercent: (json['tax_percent'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      type: (json['type'] as num?)?.toInt(),
      description: json['description'] as String?,
      walletImage: json['wallet_image'] as String?,
      expiryDate: json['expiry_date'] as String?,
      walletCategory: json['wallet_category'] == null
          ? null
          : WalletCategory.fromJson(
              json['wallet_category'] as Map<String, dynamic>),
      featuresFavorites: (json['features_favorites'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletFeatures: (json['Wallet_features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletDetailsModelToJson(WalletDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_days': instance.availableDays,
      'numbers_of_days':
          instance.numbersOfDays?.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'currency': instance.currency,
      'wallet_image': instance.walletImage,
      'expiry_date': instance.expiryDate,
      'wallet_category': instance.walletCategory?.toJson(),
      'features_favorites':
          instance.featuresFavorites?.map((e) => e.toJson()).toList(),
      'wallet_category_id': instance.walletCategoryId,
      'order': instance.order,
      'days': instance.days,
      'occupancy': instance.occupancy,
      'min_unit_price': instance.minUnitPrice,
      'max_unit_price': instance.maxUnitPrice,
      'tax_percent': instance.taxPercent,
      'active': instance.active,
      'type': instance.type,
      'description': instance.description,
      'Wallet_features':
          instance.walletFeatures?.map((e) => e.toJson()).toList(),
      'countries': instance.countries?.map((e) => e.toJson()).toList(),
      'cities': instance.cities?.map((e) => e.toJson()).toList(),
    };
