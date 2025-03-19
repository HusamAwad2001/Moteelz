part of '../../wallet_screen.dart';

class _CardDetails extends StatelessWidget {
  final String name;
  final String number;
  const _CardDetails({
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('#$name', style: TextStyles.font14PrimaryBold),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 14.w),
          decoration: BoxDecoration(
            color: ColorsManager.red.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Text(
            context.tr(LocaleKeys.nights.plural(int.parse(number))),
            style: TextStyles.font14RedBold,
          ),
        ),
      ],
    );
  }
}
