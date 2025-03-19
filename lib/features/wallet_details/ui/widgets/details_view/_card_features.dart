part of '../../wallet_details_screen.dart';

class _CardFeatures extends StatelessWidget {
  const _CardFeatures();

  @override
  Widget build(BuildContext context) {
    final features = [
      'إدارة البطاقة الخاصة بك بسهولة',
      'إضافة رصيد الليالي بسعر خاص',
      'الحجز في أكثر من دولة',
      'إهداء الليالي للعائلة والأصدقاء',
      'تثبيت الأسعار طوال فترة صلاحية البطاقة',
      'خدمة عملاء 7/24',
    ];

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
              'مميزات البطاقة',
              style: TextStyles.font16DarkBlueSemiBold,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: ColorsManager.greyFB,
              border: Border.all(color: ColorsManager.greyF4),
            ),
            child: Column(
              spacing: 8.h,
              children: features.map((value) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppImage(
                      path: AppIcons.checkCircle,
                      width: 16.w,
                    ),
                    horizontalSpace(4),
                    Expanded(
                      child: Text(
                        value,
                        style: TextStyles.font14Black4EMedium,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
