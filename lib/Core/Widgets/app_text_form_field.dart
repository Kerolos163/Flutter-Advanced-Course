import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Theme/app_color.dart';
import '../App_Theme/text_style.dart';

class TextFormFieldContainer extends StatelessWidget {
  const TextFormFieldContainer({
    super.key,
    this.hint,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
    this.contentPadding,
    this.backgroundColor,
  });
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? AppColor.moreLightGray,
        hintText: hint,
        hintStyle: AppTextStyle.getFontStyle(
            color: AppColor.lightGray,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: borderState(color: AppColor.lightGray),
        focusedBorder: borderState(color: AppColor.primary),
        focusedErrorBorder: borderState(color: AppColor.error),
        suffixIcon: suffixIcon,
      ),
      style: AppTextStyle.getFontStyle(color: AppColor.textColor),
    );
  }

  OutlineInputBorder borderState({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
