// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => WalletModel(
      id: (json['id'] as num?)?.toInt(),
      walletCategoryId: (json['wallet_category_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      days: (json['days'] as num?)?.toInt(),
      availableDays: (json['available_days'] as num?)?.toInt(),
      numbersOfDays: (json['numbers_of_days'] as List<dynamic>?)
          ?.map((e) => WalletDays.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as num?,
      occupancy: (json['occupancy'] as num?)?.toInt(),
      minUnitPrice: json['min_unit_price'] as num?,
      maxUnitPrice: json['max_unit_price'] as num?,
      currency: json['currency'] as String?,
      taxPercent: json['tax_percent'] as num?,
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
          ?.map((e) => FeaturesFavorites.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet_category_id': instance.walletCategoryId,
      'name': instance.name,
      'order': instance.order,
      'days': instance.days,
      'available_days': instance.availableDays,
      'numbers_of_days': instance.numbersOfDays,
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
      'wallet_category': instance.walletCategory,
      'features_favorites': instance.featuresFavorites,
      'countries': instance.countries,
    };
