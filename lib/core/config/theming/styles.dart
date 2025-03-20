import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/config/theming/font_weight_helper.dart';

abstract class TextStyles {
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16DarkBlueBold = font16WhiteSemiBold.copyWith(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16DarkBlueSemiBold = font16DarkBlueBold.copyWith(
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14Black3DSemiBold = font16DarkBlueSemiBold.copyWith(
    fontSize: 14.sp,
    color: ColorsManager.black3D,
  );
  static TextStyle font14WhiteMedium = font16WhiteSemiBold.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueSemiBold = font16DarkBlueBold.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14DarkBlueBold = font14DarkBlueSemiBold.copyWith(
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16PrimaryBold = font16WhiteSemiBold.copyWith(
    color: ColorsManager.primary,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font20PrimaryBold = font16PrimaryBold.copyWith(
    fontSize: 20.sp,
  );
  static TextStyle font16WhiteBold = font16PrimaryBold.copyWith(
    color: ColorsManager.white,
  );
  static TextStyle font16BlackMedium = font16WhiteSemiBold.copyWith(
    color: ColorsManager.black,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14GreyB0Regular = TextStyle(
    color: ColorsManager.greyB0,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14Black3ERegular = font14GreyB0Regular.copyWith(
    color: ColorsManager.black3E,
  );
  static TextStyle font14Black38SemiBold = font14GreyB0Regular.copyWith(
    color: ColorsManager.black38,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14Grey90Medium = font14GreyB0Regular.copyWith(
    color: ColorsManager.grey90,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16Grey90Medium = font14Grey90Medium.copyWith(
    fontSize: 16.sp,
  );
  static TextStyle font16Grey8DSemiBold = font16Grey90Medium.copyWith(
    color: ColorsManager.grey8D,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font18WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18DarkBlue2SemiBold = font18WhiteBold.copyWith(
    color: ColorsManager.darkBlue2,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font8WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 8.sp,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14Black1ERegular = font14WhiteBold.copyWith(
    color: ColorsManager.black1E,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14PrimaryBold = font14WhiteBold.copyWith(
    color: ColorsManager.primary,
  );
  static TextStyle font14Grey9CBold = font14PrimaryBold.copyWith(
    color: ColorsManager.grey9C,
  );
  static TextStyle font14Black4EMedium = font14WhiteBold.copyWith(
    color: ColorsManager.black4E,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14RedBold = font14WhiteBold.copyWith(
    color: ColorsManager.red,
  );
  static TextStyle font12WhiteBold = font14WhiteBold.copyWith(
    fontSize: 12.sp,
  );
  static TextStyle font12RedBold = font12WhiteBold.copyWith(
    color: ColorsManager.red,
  );
  static TextStyle font12Grey7BMedium = font12WhiteBold.copyWith(
    color: ColorsManager.grey7B,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font12Black38Medium = font12WhiteBold.copyWith(
    color: ColorsManager.black38,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font11WhiteMedium = font14WhiteBold.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font18Black16SemiBold = TextStyle(
    color: ColorsManager.black16,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
}
