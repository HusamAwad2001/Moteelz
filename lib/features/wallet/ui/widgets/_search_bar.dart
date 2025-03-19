part of '../wallet_screen.dart';

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 55.h, left: 23.w, right: 23.w, bottom: 13.h),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 29.5,
            color: ColorsManager.black.withValues(alpha: 0.12),
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: AppTextFormField(
        hintText: 'أبحث عن بطاقة',
        prefixSvgIcon: AppIcons.search,
        maxLines: 1,
        validator: (value) {},
      ),
    );
  }
}
