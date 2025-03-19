part of '../../wallet_screen.dart';

class _CardDetails extends StatelessWidget {
  const _CardDetails();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('#الأعمال', style: TextStyles.font14PrimaryBold),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 14.w),
          decoration: BoxDecoration(
            color: ColorsManager.red.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Text('7 ليالي', style: TextStyles.font14RedBold),
        ),
      ],
    );
  }
}
