// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet/wallet_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDays _$WalletDaysFromJson(Map<String, dynamic> json) => WalletDays(
      days: json['days'] as String?,
      expiryDays: json['expiry_days'] as String?,
      expiryDate: json['expiry_date'] as String?,
    );

Map<String, dynamic> _$WalletDaysToJson(WalletDays instance) =>
    <String, dynamic>{
      'days': instance.days,
      'expiry_days': instance.expiryDays,
      'expiry_date': instance.expiryDate,
    };
