part of '../../wallet_screen.dart';

class _CardHeader extends StatelessWidget {
  final String imageUrl;
  const _CardHeader(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: AppImage(
        path: imageUrl,
        height: 170.h,
        width: double.infinity,
      ),
    );
  }
}
