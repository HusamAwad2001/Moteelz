extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
  double toDouble() {
    if (isNullOrEmpty()) return 0.0;
    return double.tryParse(this!) ?? 0.0;
  }
}

extension IntExtension on int? {
  bool isNullOrEmpty() => this == null;
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
