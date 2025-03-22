part of '../../wallet_details_screen.dart';

class _DiscountSection extends StatelessWidget {
  const _DiscountSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.discount_coupon),
          style: TextStyles.font16DarkBlueSemiBold,
        ),
        verticalSpace(5),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                hintText: context.tr(LocaleKeys.enter_discount_coupon),
                validator: (value) {},
              ),
            ),
            SizedBox(width: 10.w),
            AppButton(
              width: 90.w,
              vPadding: 13,
              label: context.tr(LocaleKeys.apply),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
