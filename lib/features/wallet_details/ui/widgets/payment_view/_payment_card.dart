part of '../../wallet_details_screen.dart';

class _PaymentCard extends StatelessWidget {
  const _PaymentCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ColorsManager.greyF4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.w,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: AppImage(
              path: AppImages.card,
              width: 132.w,
            ),
          ),
          const Expanded(child: _PaymentCardDetails()),
        ],
      ),
    );
  }
}

class _PaymentCardDetails extends StatelessWidget {
  const _PaymentCardDetails();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 2.h,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2.w,
          children: [
            Expanded(
              child: Text(
                'المعارض والمؤتمرات',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16DarkBlueBold.copyWith(
                  fontSize: 14.sp,
                ),
              ),
            ),
            _TaqItem(
              text: '5 ليالي',
              color: ColorsManager.redLight,
              style: TextStyles.font12RedBold,
            ),
          ],
        ),
        Text(
          '#الأعمال',
          style: TextStyles.font14Grey9CBold,
        ),
        Text(
          '3,750 ر.س',
          style: TextStyles.font16PrimaryBold,
        ),
      ],
    );
  }
}

class _TaqItem extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle style;
  const _TaqItem({
    required this.text,
    required this.color,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Text(text, style: style),
    );
  }
}
