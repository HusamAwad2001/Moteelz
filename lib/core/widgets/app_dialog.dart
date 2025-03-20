import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDialog {
  static show(
    BuildContext context, {
    required Widget content,
    Color? backgroundColor,
    double borderRadius = 20,
    double? width,
    bool isDismissible = true,
    EdgeInsetsGeometry? padding,
  }) {
    showDialog(
      context: context,
      useSafeArea: true,
      barrierDismissible: isDismissible,
      builder: (_) {
        return Dialog(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            child: SizedBox(
              width: width ?? double.infinity,
              child: content,
            ),
          ),
        );
      },
    );
  }
}
