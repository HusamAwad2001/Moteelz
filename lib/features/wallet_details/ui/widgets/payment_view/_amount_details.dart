part of '../../wallet_details_screen.dart';

class _AmountRow extends StatelessWidget {
  final String label;
  final String amount;
  final bool? bold;
  const _AmountRow({
    required this.label,
    required this.amount,
    this.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: (bold ?? false)
              ? TextStyles.font14DarkBlueBold
              : TextStyles.font14Grey90Medium,
        ),
        Text(
          amount,
          style: (bold ?? false)
              ? TextStyles.font16PrimaryBold
              : TextStyles.font16Grey90Medium,
        ),
      ],
    );
  }
}

class _AmountDetails extends StatelessWidget {
  const _AmountDetails();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تفاصيل المبلغ',
          style: TextStyles.font16DarkBlueSemiBold,
        ),
        verticalSpace(8),
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: ColorsManager.greyF4),
          ),
          child: Column(
            spacing: 17.h,
            children: const [
              _AmountRow(
                label: '5 ليالي',
                amount: '3,750 ر.س',
              ),
              _AmountRow(
                label: 'ضريبة القيمة المضافة (15%)',
                amount: '563 ر.س',
              ),
              DashedLineWidget(),
              _AmountRow(
                label: 'المبلغ الإجمالي',
                amount: '4,313 ر.س',
                bold: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
