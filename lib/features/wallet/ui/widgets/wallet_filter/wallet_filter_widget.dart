part of '../../wallet_screen.dart';

class WalletFilterWidget extends StatefulWidget {
  final List<String>? countries;
  const WalletFilterWidget({super.key, required this.countries});

  @override
  State<WalletFilterWidget> createState() => _WalletFilterWidgetState();
}

class _WalletFilterWidgetState extends State<WalletFilterWidget> {
  late RangeValues _priceRange;

  final items = ['مصر', 'السعودية', 'الامارات', 'قطر'];
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
                selectedValue:
                    selectedValue ?? widget.countries?[0] ?? items[0],
                items: widget.countries ?? items,
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
          onTap: onFilter,
        ),
      ],
    );
  }

  void _resetPriceRange() {
    final walletCubit = context.read<WalletCubit>();
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    walletCubit.emit(
      walletCubit.state.copyWith(
        wallets: walletCubit.state.wallets,
        filteredWallets: [],
        status: WalletStatus.success,
      ),
    );
    setState(() => _priceRange = const RangeValues(500, 10000));
    context.pop();
  }

  void onFilter() {
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
    context.pop();
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    walletCubit.emit(
      walletCubit.state.copyWith(
        wallets: walletCubit.state.wallets,
        filteredWallets: filteredWallets,
        status: WalletStatus.success,
      ),
    );
  }
}
