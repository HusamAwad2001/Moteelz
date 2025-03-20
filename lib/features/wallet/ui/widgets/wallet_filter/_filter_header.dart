part of '../../wallet_screen.dart';

class _PriceHeader extends StatelessWidget {
  final Function()? onReset;
  const _PriceHeader({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.tr(LocaleKeys.filter),
          style: TextStyles.font18DarkBlue2SemiBold,
        ),
        GestureDetector(
          onTap: onReset,
          child: Text(
            context.tr(LocaleKeys.clear_all),
            style: TextStyles.font16PrimaryBold.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
