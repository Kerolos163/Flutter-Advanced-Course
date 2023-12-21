import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

abstract class AppTextStyle {
  static TextStyle getFontStyle({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? height,
    TextDecoration? textDecoration,
    Color? decorationColor,
  }) {
    return TextStyle(
      color: color ?? AppColor.textColor,
      fontWeight: fontWeight,
      fontSize: fontSize ?? 14.sp,
      height: height,
      decoration: textDecoration,
      decorationColor: decorationColor,
      decorationThickness: 2,
    );
  }
}
