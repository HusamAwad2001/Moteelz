part of '../../wallet_screen.dart';

class WalletFilterWidget extends StatefulWidget {
  const WalletFilterWidget({super.key});

  @override
  State<WalletFilterWidget> createState() => _WalletFilterWidgetState();
}

class _WalletFilterWidgetState extends State<WalletFilterWidget> {
  late RangeValues _priceRange;

  @override
  void initState() {
    super.initState();
    _priceRange = const RangeValues(100, 7500);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 17.w, right: 17.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _PriceHeader(onReset: _resetPriceRange),
              verticalSpace(30),
              _PriceFilter(
                priceRange: _priceRange,
                onChanged: (value) => setState(() => _priceRange = value),
              ),
              verticalSpace(16),
              const _CountryFilter(),
              verticalSpace(100),
            ],
          ),
        ),
        AppButton(label: 'بحث', borderRadius: 0, onTap: () {}),
      ],
    );
  }

  void _resetPriceRange() {
    setState(() => _priceRange = const RangeValues(100, 7500));
  }
}
