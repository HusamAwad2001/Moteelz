part of '../../wallet_details_screen.dart';

class _PaymentForm extends StatelessWidget {
  const _PaymentForm();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 12.w,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.h,
        children: [
          Text(
            context.tr(LocaleKeys.payment_details),
            style: TextStyles.font16DarkBlueSemiBold,
          ),
          const _PaymentMethod(),
          const _PaymentFields(),
        ],
      ),
    );
  }
}

class _PaymentMethod extends StatelessWidget {
  const _PaymentMethod();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage(path: AppIcons.radio, width: 16.w),
        horizontalSpace(4),
        Expanded(
          child: Text(
            context.tr(LocaleKeys.credit_or_debit_card),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font14Black1ERegular,
          ),
        ),
        Row(
          children: [
            AppImage(path: AppImages.visa, width: 25.w),
            AppImage(path: AppImages.masterCard, width: 25.w),
            AppImage(path: AppImages.mada, width: 25.w),
          ],
        ),
      ],
    );
  }
}

class _PaymentFields extends StatelessWidget {
  const _PaymentFields();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        AppTextFormField(
          title: context.tr(LocaleKeys.card_name),
          hintText: 'Nader Sayed',
          validator: (value) {},
        ),
        AppTextFormField(
          title: context.tr(LocaleKeys.card_number),
          hintText: '1234 1234 1234 1234',
          validator: (value) {},
        ),
        Row(
          spacing: 16.w,
          children: [
            Expanded(
              child: AppTextFormField(
                title: context.tr(LocaleKeys.expiry_date),
                hintText: '25/08',
                enabled: false,
                validator: (value) {},
              ),
            ),
            Expanded(
              child: AppTextFormField(
                title: context.tr(LocaleKeys.cvc),
                hintText: '***',
                maxLength: 3,
                validator: (value) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
