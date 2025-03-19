part of '../../wallet_screen.dart';

class WalletCardItem extends StatelessWidget {
  final VoidCallback onTap;

  const WalletCardItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
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
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.h,
          children: [
            const _CardHeader(),
            const _CardDetails(),
            const _CardFeatures(),
            Row(
              spacing: 4.w,
              children: [
                Text(' السعر يبدأ من:', style: TextStyles.font14Grey90Medium),
                Text('500 ر.س', style: TextStyles.font14PrimaryBold),
              ],
            )
          ],
        ),
      ),
    );
  }
}
