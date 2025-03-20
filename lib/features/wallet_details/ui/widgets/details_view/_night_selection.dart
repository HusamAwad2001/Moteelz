part of '../../wallet_details_screen.dart';

// ignore: must_be_immutable
class _NightSelection extends StatelessWidget {
  int selectedNightIndex;
  final Function(int index) onSelected;
  final WalletModel wallet;

  _NightSelection({
    required this.selectedNightIndex,
    required this.onSelected,
    required this.wallet,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          context.tr(LocaleKeys.number_of_nights),
          style: TextStyles.font14DarkBlueSemiBold,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Expanded(
              child: Wrap(
                spacing: 8.w,
                children:
                    (wallet.numbersOfDays ?? []).asMap().entries.map((index) {
                  bool isSelected = index.key == selectedNightIndex;
                  int value = int.parse(index.value.days ?? '0');
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
                              context.tr(LocaleKeys.nights.plural(value)),
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
                              context.tr(LocaleKeys.nights.plural(value)),
                              style: TextStyles.font12Black38Medium,
                            ),
                          ),
                        );
                }).toList(),
              ),
            ),
            Text(
              '${wallet.price} ﷼',
              style: TextStyles.font20PrimaryBold,
            ),
          ],
        ),
      ],
    );
  }
}
