import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:moteelz/core/config/theming/colors.dart';
import 'package:moteelz/core/config/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String hintText;
  final String? labelText;
  final String? title;
  final bool? isObscureText;
  final bool? enabled;
  final String? suffixSvgIcon;
  final String? prefixSvgIcon;
  final BoxConstraints? prefixIconConstraints;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String? value) validator;
  final Function()? onTapSuffixIcon;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final Function(String value)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final FocusNode? focusNode;
  const AppTextFormField({
    super.key,
    this.onTap,
    this.onChanged,
    this.contentPadding,
    this.focusedBorder,
    this.focusNode,
    this.border,
    this.enabledBorder,
    this.disabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.labelStyle,
    required this.hintText,
    this.labelText,
    this.title,
    this.isObscureText,
    this.enabled,
    this.maxLines,
    this.maxLength,
    this.suffixSvgIcon,
    this.prefixSvgIcon,
    this.keyboardType,
    this.prefixIconConstraints,
    this.backgroundColor,
    this.controller,
    this.onTapSuffixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: TextStyles.font14Black3DSemiBold,
          ),
        ],
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          focusNode: focusNode,
          onTap: onTap,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          enabled: enabled,
          onChanged: onChanged,
          maxLines: maxLines,
          maxLength: maxLength,
          buildCounter: (context,
                  {required currentLength,
                  required isFocused,
                  required maxLength}) =>
              null,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: contentPadding ?? EdgeInsets.all(16.h),
            border: border ?? _border(color: ColorsManager.greyEB),
            focusedBorder:
                focusedBorder ?? _border(color: ColorsManager.primary),
            enabledBorder:
                enabledBorder ?? _border(color: ColorsManager.greyDD),
            disabledBorder:
                disabledBorder ?? _border(color: ColorsManager.greyDD),
            errorBorder: _border(color: ColorsManager.red),
            focusedErrorBorder: _border(color: ColorsManager.red),
            hintStyle: hintStyle ?? TextStyles.font14GreyB0Regular,
            hintText: hintText,
            labelText: labelText,
            labelStyle: labelStyle,
            prefixIcon: prefixSvgIcon != null
                ? Container(
                    width: 24.w,
                    height: 24.h,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(prefixSvgIcon!),
                  )
                : null,
            suffixIcon: suffixSvgIcon != null
                ? GestureDetector(
                    onTap: onTapSuffixIcon ?? () {},
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(suffixSvgIcon!),
                    ),
                  )
                : null,
            prefixIconConstraints: prefixIconConstraints,
            fillColor: backgroundColor ?? ColorsManager.transparent,
            filled: true,
          ),
          obscureText: isObscureText ?? false,
          style: inputTextStyle ?? TextStyles.font14Black3ERegular,
          validator: (value) {
            return validator(value);
          },
        ),
      ],
    );
  }

  OutlineInputBorder _border({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
      borderRadius: BorderRadius.circular(10.r),
    );
  }
}
