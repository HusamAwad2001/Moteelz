part of '../../wallet_screen.dart';

class _PriceRangeBox extends StatelessWidget {
  final double value;
  const _PriceRangeBox(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorsManager.greyE9),
      ),
      child: FittedBox(
        child: Text(
          '${value.toInt()} ر.س',
          style: TextStyles.font14Black38SemiBold,
        ),
      ),
    );
  }
}
