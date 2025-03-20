// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCategory _$WalletCategoryFromJson(Map<String, dynamic> json) =>
    WalletCategory(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WalletCategoryToJson(WalletCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
