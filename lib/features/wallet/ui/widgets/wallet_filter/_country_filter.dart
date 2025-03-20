part of '../../wallet_screen.dart';

class _CountryFilter extends StatelessWidget {
  final String? selectedValue;
  final List<String>? items;
  final Function(String? value)? onChanged;
  const _CountryFilter({
    this.selectedValue,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.country),
          style: TextStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: ColorsManager.greyDD),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue,
              isExpanded: true,
              icon: const AppImage(path: AppIcons.arrowDown),
              items: items?.map(buildMenuItem).toList(),
              dropdownColor: ColorsManager.white,
              onChanged: onChanged,
            ),
          ),
        )
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(
        item,
        style: TextStyles.font14Black1ERegular,
      ),
    );
  }
}
