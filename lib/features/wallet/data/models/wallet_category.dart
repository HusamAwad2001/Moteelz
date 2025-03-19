import 'package:json_annotation/json_annotation.dart';

part 'wallet_category.g.dart';

@JsonSerializable()
class WalletCategory {
  final String? name;

  const WalletCategory({this.name});

  factory WalletCategory.fromJson(Map<String, dynamic> json) =>
      _$WalletCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCategoryToJson(this);
}
