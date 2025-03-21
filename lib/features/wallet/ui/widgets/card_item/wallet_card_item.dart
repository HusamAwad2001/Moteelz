part of '../../wallet_screen.dart';

class WalletCardItem extends StatelessWidget {
  final WalletModel wallet;
  final VoidCallback onTap;

  const WalletCardItem({
    super.key,
    required this.wallet,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: _cardDecoratedBox(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.h,
          children: [
            _CardHeader(wallet.walletImage ?? AppImages.appLogo),
            _CardDetails(
              name: wallet.name ?? '',
              number: wallet.numbersOfDays?.length.toString() ?? '0',
            ),
            if (wallet.featuresFavorites?.isNotEmpty ?? false) ...[
              _CardFeatures(features: wallet.featuresFavorites!),
            ],
            Row(
              spacing: 4.w,
              children: [
                Text(
                  context.tr(LocaleKeys.start_price),
                  style: TextStyles.font14Grey90Medium,
                ),
                Text(
                  '${wallet.price} ﷼',
                  style: TextStyles.font14PrimaryBold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardDecoratedBox() {
    return BoxDecoration(
      color: ColorsManager.white,
      borderRadius: BorderRadius.circular(24.r),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 4),
          spreadRadius: -4,
          blurRadius: 4,
          color: ColorsManager.black0C.withValues(alpha: 0.05),
        ),
        BoxShadow(
          offset: const Offset(0, 16),
          spreadRadius: -8,
          blurRadius: 16,
          color: ColorsManager.black0C.withValues(alpha: 0.1),
        ),
      ],
    );
  }
}
