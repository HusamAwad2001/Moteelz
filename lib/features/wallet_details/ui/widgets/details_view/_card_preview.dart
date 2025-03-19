part of '../../wallet_details_screen.dart';

class _CardPreview extends StatelessWidget {
  const _CardPreview();

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h,
            children: [
              Text(
                'المعارض والمؤتمرات',
                style: TextStyles.font16DarkBlueBold,
              ),
              Text(
                '#الأعمال',
                style: TextStyles.font14PrimaryBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
