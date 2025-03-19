part of '../../wallet_screen.dart';

class _CardFeatures extends StatelessWidget {
  const _CardFeatures();

  @override
  Widget build(BuildContext context) {
    final features = [
      'إهداء الليالي للعائلة والأصقاء',
      'الحجز في أكثر من دولة',
      'تثبيت الأسعار طول فترة صلاحية المحفظة',
    ];

    return Column(
      spacing: 8.h,
      children: features.map((feature) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(path: AppIcons.checkCircle, width: 16.w),
            horizontalSpace(4),
            Expanded(
              child: Text(feature, style: TextStyles.font14Black4EMedium),
            ),
          ],
        );
      }).toList(),
    );
  }
}
