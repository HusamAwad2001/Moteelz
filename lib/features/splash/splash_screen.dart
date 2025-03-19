import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/core/config/routing/routes.dart';
import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/helpers/extensions/navigations_extensions.dart';
import 'package:moteelz/core/helpers/strings/app_images.dart';
import 'package:moteelz/core/widgets/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _start();
  }

  void _start() {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacementNamed(Routes.walletScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 95.w),
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: const AppImage(path: AppImages.appLogo),
        ),
      ),
    );
  }
}
