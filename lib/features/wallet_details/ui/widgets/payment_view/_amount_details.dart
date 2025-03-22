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
          context.tr(LocaleKeys.amount_details),
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
          child: Builder(
            builder: (_) {
              final cubit = context.read<WalletDetailsCubit>();
              int nights = 5;
              num price = cubit.state.wallet?.price ?? 1;
              double taxPercent = (cubit.state.wallet?.taxPercent ?? 1) / 100;
              double value = price * taxPercent;
              double total = price + value;
              return Column(
                spacing: 17.h,
                children: [
                  _AmountRow(
                    label: context.tr(LocaleKeys.nights.plural(nights)),
                    amount: '$price ﷼',
                  ),
                  _AmountRow(
                    label:
                        '${context.tr(LocaleKeys.vat)} (${cubit.state.wallet?.taxPercent?.toStringAsFixed(1)}%)',
                    amount: '${value.toStringAsFixed(1)} ﷼',
                  ),
                  const DashedLineWidget(),
                  _AmountRow(
                    label: context.tr(LocaleKeys.total_amount),
                    amount: '${total.toStringAsFixed(1)} ﷼',
                    bold: true,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
