import 'package:json_annotation/json_annotation.dart';

part 'wallet_category.g.dart';

@JsonSerializable()
class WalletCategory {
  final int? id;
  final String? name;
  final String? icon;

  const WalletCategory({this.id, this.name, this.icon});

  factory WalletCategory.fromJson(Map<String, dynamic> json) =>
      _$WalletCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCategoryToJson(this);
}
