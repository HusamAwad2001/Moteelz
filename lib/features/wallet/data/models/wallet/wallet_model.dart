import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/features/wallet/data/models/wallet/features_favorites.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_category.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_days.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'available_days')
  final int? availableDays;
  @JsonKey(name: 'numbers_of_days')
  final List<WalletDays>? days;
  final num? price;
  final String? currency;
  @JsonKey(name: 'wallet_image')
  final String? walletImage;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  @JsonKey(name: 'wallet_category')
  final WalletCategory? walletCategory;
  @JsonKey(name: 'features_favorites')
  final List<FeaturesFavorites>? featuresFavorites;

  const WalletModel({
    this.id,
    this.name,
    this.availableDays,
    this.days,
    this.price,
    this.currency,
    this.walletImage,
    this.expiryDate,
    this.walletCategory,
    this.featuresFavorites,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
