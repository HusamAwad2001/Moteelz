part of '../../wallet_screen.dart';

class WalletFilterWidget extends StatefulWidget {
  const WalletFilterWidget({super.key});

  @override
  State<WalletFilterWidget> createState() => _WalletFilterWidgetState();
}

class _WalletFilterWidgetState extends State<WalletFilterWidget> {
  late RangeValues _priceRange;

  final items = ['الولايات المتحدة', 'مصر', 'السعودية', 'الامارات', 'قطر'];
  // final items = <String>[];
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    _priceRange = const RangeValues(500, 10000);
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
              _CountryFilter(
                selectedValue: selectedValue ?? items[0],
                items: items,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
              verticalSpace(100),
            ],
          ),
        ),
        AppButton(
          label: context.tr(LocaleKeys.search),
          borderRadius: 0,
          onTap: onSearch,
        ),
      ],
    );
  }

  void _resetPriceRange() {
    final walletCubit = context.read<WalletCubit>();
    walletCubit.emit(
      walletCubit.state.copyWith(
        wallets: walletCubit.state.wallets,
        filteredWallets: [],
        status: WalletStatus.success,
      ),
    );
    setState(() => _priceRange = const RangeValues(500, 10000));
  }

  void onSearch() {
    final walletCubit = context.read<WalletCubit>();
    final filteredWallets = walletCubit.state.wallets?.where((wallet) {
      return (wallet.price ?? 0.0) >= _priceRange.start &&
          (wallet.price ?? 0.0) <= _priceRange.end &&
          wallet.name == selectedValue;
    }).toList();
    if ((filteredWallets ?? []).isEmpty) {
      context.pop();
      context.showSnackbar(
        message: context.tr(LocaleKeys.empty_wallets),
        error: true,
      );
      return;
    }
    walletCubit.emit(
      walletCubit.state.copyWith(
        filteredWallets: filteredWallets,
        status: WalletStatus.success,
      ),
    );
  }
}
