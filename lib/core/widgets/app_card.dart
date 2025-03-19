import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.borderRadius = 10,
    this.backgroundColor,
    this.shadowColor,
  });

  final Widget child;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.shade200,
            offset: const Offset(0, 0),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
