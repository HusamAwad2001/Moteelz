import 'package:json_annotation/json_annotation.dart';

part 'number_of_days.g.dart';

@JsonSerializable()
class NumberOfDays {
  final String? days;
  @JsonKey(name: 'expiry_days')
  final String? expiryDays;
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;

  const NumberOfDays({
    this.days,
    this.expiryDays,
    this.expiryDate,
  });

  factory NumberOfDays.fromJson(Map<String, dynamic> json) =>
      _$NumberOfDaysFromJson(json);

  Map<String, dynamic> toJson() => _$NumberOfDaysToJson(this);
}
