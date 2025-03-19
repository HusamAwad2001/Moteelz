import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:moteelz/core/helpers/extensions/check_null_extension.dart';
import 'package:moteelz/core/helpers/strings/app_images.dart';

import 'package:moteelz/core/widgets/app_loading_widget_service.dart';

class AppImage extends StatelessWidget {
  final String path;
  final BoxFit fit;
  final double? width;
  final double? height;
  final bool isCircular;

  const AppImage({
    super.key,
    required this.path,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.isCircular = false,
  });

  @override
  Widget build(BuildContext context) {
    // Define image widget
    Widget image;

    // If path is null or empty, return a default asset image
    if (path.isNullOrEmpty()) {
      image = Image.asset(
        '',
        fit: fit,
        width: width,
        height: height,
      );
    }
    // Check if the image is an SVG file
    else if (path.toLowerCase().endsWith('.svg')) {
      image = SvgPicture.asset(
        path,
        fit: fit,
        width: width,
        height: height,
        placeholderBuilder: (context) => const AppLoadingWidget(),
      );
    }
    // Check if the image is from network
    else if (path.startsWith('http') || path.startsWith('https')) {
      image = CachedNetworkImage(
        imageUrl: path,
        fit: fit,
        width: width,
        height: height,
        placeholder: (context, url) => AppImage(
          path: AppImages.appLogo,
          fit: BoxFit.contain,
          width: double.infinity,
          height: 150.h,
        ),
        errorWidget: (context, url, error) => AppImage(
          path: AppImages.appLogo,
          fit: BoxFit.contain,
          width: double.infinity,
          height: 150.h,
        ),
      );
    }
    // Default case: Load asset image
    else {
      image = Image.asset(
        path,
        fit: fit,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      );
    }

    // Apply circular shape if isCircular is true
    return isCircular ? ClipOval(child: image) : image;
  }
}
