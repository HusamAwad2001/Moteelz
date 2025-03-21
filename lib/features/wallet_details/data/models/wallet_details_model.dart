import 'package:json_annotation/json_annotation.dart';
import 'package:moteelz/features/wallet/data/models/country/country.dart';
import 'package:moteelz/features/wallet/data/models/wallet/feature.dart';
import 'package:moteelz/features/wallet/data/models/wallet/number_of_days.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_category.dart';
import 'package:moteelz/features/wallet_details/data/models/city.dart';

part 'wallet_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WalletDetailsModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'available_days')
  final int? availableDays;
  @JsonKey(name: 'numbers_of_days')
  final List<NumberOfDays>? numbersOfDays;
  final num? price;
  final String? currency;
  @JsonKey(name: 'wallet_image')
  final String? walletImage;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  @JsonKey(name: 'wallet_category')
  final WalletCategory? walletCategory;
  @JsonKey(name: 'features_favorites')
  final List<Feature>? featuresFavorites;
  @JsonKey(name: 'wallet_category_id')
  final int? walletCategoryId;
  final int? order;
  final int? days;
  final int? occupancy;
  @JsonKey(name: 'min_unit_price')
  final double? minUnitPrice;
  @JsonKey(name: 'max_unit_price')
  final double? maxUnitPrice;
  @JsonKey(name: 'tax_percent')
  final double? taxPercent;
  final bool? active;
  final int? type;
  final String? description;
  @JsonKey(name: 'Wallet_features')
  final List<Feature>? walletFeatures;
  final List<Country>? countries;
  final List<City>? cities;

  WalletDetailsModel({
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
    this.walletFeatures,
    this.countries,
    this.cities,
  });

  factory WalletDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$WalletDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletDetailsModelToJson(this);
}
