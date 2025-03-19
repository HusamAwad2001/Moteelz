part of '../../wallet_screen.dart';

class _CountryFilter extends StatelessWidget {
  const _CountryFilter();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('الدولة', style: TextStyles.font16BlackMedium),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'اختيار',
          enabled: false,
          validator: (value) {},
          suffixSvgIcon: AppIcons.arrowDown,
        ),
      ],
    );
  }
}
