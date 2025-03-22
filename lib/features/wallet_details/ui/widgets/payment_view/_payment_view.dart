part of '../../wallet_details_screen.dart';

class _PaymentView extends StatelessWidget {
  const _PaymentView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _PaymentCard(),
                verticalSpace(16),
                const _DiscountSection(),
                verticalSpace(16),
                const _AmountDetails(),
                verticalSpace(24),
                const DashedLineWidget(),
                verticalSpace(24),
                const _PaymentForm(),
                verticalSpace(36),
              ],
            ),
          ),
          AppButton(
            label: context.tr(LocaleKeys.pay_now),
            borderRadius: 0,
            onTap: () {
              context.showSuccessDialog(
                title: context.tr(LocaleKeys.payment_successful),
                message: context.tr(LocaleKeys.credit_purchase_successful),
                buttonTitle: context.tr(LocaleKeys.home_page),
                onPressed: () {
                  context.pop();
                  context.pop();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
