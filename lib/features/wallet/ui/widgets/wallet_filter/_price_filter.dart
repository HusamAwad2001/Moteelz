part of '../../wallet_screen.dart';

class _PriceFilter extends StatelessWidget {
  final RangeValues priceRange;
  final void Function(RangeValues value) onChanged;
  const _PriceFilter({
    required this.priceRange,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('السعر', style: TextStyles.font16BlackMedium),
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _PriceRangeBox(priceRange.start),
              _PriceRangeBox(priceRange.end),
            ],
          ),
        ),
        verticalSpace(4),
        RangeSlider(
          values: priceRange,
          min: 100,
          max: 15000,
          onChanged: onChanged,
          activeColor: ColorsManager.primary,
          inactiveColor: ColorsManager.greyEE,
        ),
      ],
    );
  }
}
