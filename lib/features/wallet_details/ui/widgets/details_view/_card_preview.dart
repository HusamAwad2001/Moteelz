part of '../../wallet_details_screen.dart';

class _CardPreview extends StatelessWidget {
  final WalletDetailsModel wallet;
  const _CardPreview(this.wallet);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.w,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: AppImage(
            path: wallet.walletImage ?? AppImages.appLogo,
            width: 132.w,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h,
            children: [
              Text(
                wallet.walletCategory?.name ?? '',
                style: TextStyles.font16DarkBlueBold,
              ),
              Text(
                '#${wallet.name}',
                style: TextStyles.font14PrimaryBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
