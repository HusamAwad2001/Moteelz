// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet/wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => WalletModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      availableDays: (json['available_days'] as num?)?.toInt(),
      days: (json['numbers_of_days'] as List<dynamic>?)
          ?.map((e) => WalletDays.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as num?,
      currency: json['currency'] as String?,
      walletImage: json['wallet_image'] as String?,
      expiryDate: json['expiry_date'] as String?,
      walletCategory: json['wallet_category'] == null
          ? null
          : WalletCategory.fromJson(
              json['wallet_category'] as Map<String, dynamic>),
      featuresFavorites: (json['features_favorites'] as List<dynamic>?)
          ?.map((e) => FeaturesFavorites.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_days': instance.availableDays,
      'numbers_of_days': instance.days,
      'price': instance.price,
      'currency': instance.currency,
      'wallet_image': instance.walletImage,
      'expiry_date': instance.expiryDate,
      'wallet_category': instance.walletCategory,
      'features_favorites': instance.featuresFavorites,
    };
