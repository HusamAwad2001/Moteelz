part of '../../wallet_details_screen.dart';

class _CardDescription extends StatelessWidget {
  final WalletModel wallet;
  const _CardDescription(this.wallet);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w),
            child: Text(
              context.tr(LocaleKeys.card_description),
              style: TextStyles.font16DarkBlueSemiBold,
            ),
          ),
          Text(
            'محفظة "موتيلز" العائلية هي الحل المثالي للعائلات التي تبحث عن مرونة وتوفير في السفر، مع إمكانية قضاء عطلات متعددة في 10 دول مميزة. إليك الخصائص الرئيسية التي تجعل هذه المحفظة جذابة وسهلة الاستخدام للعائلات مرونة في توزيع الليالي: تُمنح العائلات عددًا معينًا من الليالي يمكنهم تقسيمه بين 10 دول مختلفة أسعار مخصصة للعائلات',
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.font12Grey7BMedium,
          ),
        ],
      ),
    );
  }
}
