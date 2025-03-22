// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_of_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberOfDays _$NumberOfDaysFromJson(Map<String, dynamic> json) => NumberOfDays(
      days: json['days'] as String?,
      expiryDays: json['expiry_days'] as String?,
      expiryDate: json['expiry_date'] as String?,
    );

Map<String, dynamic> _$NumberOfDaysToJson(NumberOfDays instance) =>
    <String, dynamic>{
      'days': instance.days,
      'expiry_days': instance.expiryDays,
      'expiry_date': instance.expiryDate,
    };
