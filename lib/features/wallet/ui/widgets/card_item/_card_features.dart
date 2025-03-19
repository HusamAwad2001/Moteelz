part of '../../wallet_screen.dart';

class _CardFeatures extends StatelessWidget {
  final List<FeaturesFavorites> features;
  const _CardFeatures({required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: features.map((feature) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(path: AppIcons.checkCircle, width: 16.w),
            horizontalSpace(4),
            Expanded(
              child: Text(
                feature.name?.trim() ?? '',
                style: TextStyles.font14Black4EMedium,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
