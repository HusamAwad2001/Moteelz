import 'package:json_annotation/json_annotation.dart';

part '../wallet_days.g.dart';

@JsonSerializable()
class WalletDays {
  final String? days;
  @JsonKey(name: 'expiry_days')
  final String? expiryDays;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;

  const WalletDays({
    this.days,
    this.expiryDays,
    this.expiryDate,
  });

  factory WalletDays.fromJson(Map<String, dynamic> json) =>
      _$WalletDaysFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDaysToJson(this);
}
