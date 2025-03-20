part of '../../wallet_details_screen.dart';

class _CardDescription extends StatelessWidget {
  final WalletDetailsModel wallet;
  const _CardDescription(this.wallet);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w),
            child: Text(
              context.tr(LocaleKeys.card_description),
              style: TextStyles.font16DarkBlueSemiBold,
            ),
          ),
          Text(
            wallet.description,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font12Grey7BMedium,
          ),
        ],
      ),
    );
  }
}
