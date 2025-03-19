part of '../../wallet_screen.dart';

class _PriceHeader extends StatelessWidget {
  final Function()? onReset;
  const _PriceHeader({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('التصفية', style: TextStyles.font18DarkBlue2SemiBold),
        GestureDetector(
          onTap: onReset,
          child: Text(
            'محو الكل',
            style: TextStyles.font16PrimaryBold.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
