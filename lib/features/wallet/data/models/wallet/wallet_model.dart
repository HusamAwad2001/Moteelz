import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/features/wallet/data/models/country/country_model.dart';
import 'package:moteelz/features/wallet/data/models/wallet/features_favorites.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_category.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_days.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletModel {
  final int? id;
  @JsonKey(name: 'wallet_category_id')
  final int? walletCategoryId;
  final String? name;
  final int? order;
  final int? days;
  @JsonKey(name: 'available_days')
  final int? availableDays;
  @JsonKey(name: 'numbers_of_days')
  final List<WalletDays>? numbersOfDays;
  final num? price;
  final int? occupancy;
  @JsonKey(name: 'min_unit_price')
  final num? minUnitPrice;
  @JsonKey(name: 'max_unit_price')
  final num? maxUnitPrice;
  final String? currency;
  @JsonKey(name: 'tax_percent')
  final num? taxPercent;
  final bool? active;
  final int? type;
  final String? description;
  @JsonKey(name: 'wallet_image')
  final String? walletImage;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  @JsonKey(name: 'wallet_category')
  final WalletCategory? walletCategory;
  @JsonKey(name: 'features_favorites')
  final List<FeaturesFavorites>? featuresFavorites;
  @JsonKey(name: 'countries')
  final List<CountryModel>? countries;

  const WalletModel({
    this.id,
    this.walletCategoryId,
    this.name,
    this.order,
    this.days,
    this.availableDays,
    this.numbersOfDays,
    this.price,
    this.occupancy,
    this.minUnitPrice,
    this.maxUnitPrice,
    this.currency,
    this.taxPercent,
    this.active,
    this.type,
    this.description,
    this.walletImage,
    this.expiryDate,
    this.walletCategory,
    this.featuresFavorites,
    this.countries,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
