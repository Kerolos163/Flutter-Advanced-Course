import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';

abstract class AppTextStyle {
  static TextStyle getFontStyle(
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return TextStyle(
      color: color ?? AppColor.textColor,
      fontWeight: fontWeight,
      fontSize: fontSize ?? 14.sp,
    );
  }
}
