part of '../../wallet_details_screen.dart';

class _DiscountSection extends StatelessWidget {
  const _DiscountSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('هل لديك كوبون خصم؟', style: TextStyles.font16DarkBlueSemiBold),
        verticalSpace(5),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                  hintText: 'ادخل كوبون الخصم', validator: (value) {}),
            ),
            SizedBox(width: 10.w),
            AppButton(width: 90.w, vPadding: 13, label: 'تطبيق', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
