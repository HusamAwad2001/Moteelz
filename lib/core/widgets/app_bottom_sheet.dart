import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/theming/colors.dart';

abstract class AppBottomSheet {
  static show(
    BuildContext context, {
    required Widget content,
    Color? backgroundColor,
    double borderRadius = 15,
    bool isDismissible = true,
    bool isScrollControlled = true,
    Function()? onClosed,
  }) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius.r),
          topRight: Radius.circular(borderRadius.r),
        ),
      ),
      isDismissible: isDismissible,
      useSafeArea: true,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor ?? ColorsManager.white,
      builder: (_) {
        return Builder(
          builder: (newContext) {
            return SizedBox(
              width: double.infinity,
              child: content,
            );
          },
        );
      },
    ).whenComplete(() {
      if (onClosed != null) {
        onClosed();
      }
    });
  }
}
