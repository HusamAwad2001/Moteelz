part of '../../wallet_details_screen.dart';

// ignore: must_be_immutable
class _NightSelection extends StatelessWidget {
  int selectedNightIndex;
  final Function(int index) onSelected;
  _NightSelection({required this.selectedNightIndex, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          'اختر عدد الليالي :',
          style: TextStyles.font14DarkBlueSemiBold,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Expanded(
              child: Wrap(
                spacing: 8.w,
                children: [5, 15, 30].asMap().entries.map((index) {
                  bool isSelected = index.key == selectedNightIndex;
                  int value = index.value;
                  return isSelected
                      ? DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(10.r),
                          dashPattern: const [2, 2],
                          color: ColorsManager.primary,
                          strokeWidth: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.w,
                              vertical: 9.h,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsManager.primaryLight,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              '$value ${value < 11 ? 'ليالي' : 'ليلة'}',
                              style: TextStyles.font12Black38Medium.copyWith(
                                color: ColorsManager.primary,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => onSelected(index.key),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 10.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ColorsManager.greyE9,
                              ),
                            ),
                            child: Text(
                              '$value ${value < 11 ? 'ليالي' : 'ليلة'}',
                              style: TextStyles.font12Black38Medium,
                            ),
                          ),
                        );
                }).toList(),
              ),
            ),
            Text(
              '3,750 ر.س',
              style: TextStyles.font20PrimaryBold,
            ),
          ],
        ),
      ],
    );
  }
}
