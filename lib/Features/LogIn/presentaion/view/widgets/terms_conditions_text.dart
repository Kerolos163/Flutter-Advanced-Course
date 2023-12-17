import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/App_Theme/text_style.dart';

class TermsConditionsText extends StatelessWidget {
  const TermsConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: AppTextStyle.getFontStyle(
                fontSize: 11.sp, color: AppColor.textGray),
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: AppTextStyle.getFontStyle(fontSize: 11.sp),
          ),
          TextSpan(
            text: " and ",
            style: AppTextStyle.getFontStyle(
                fontSize: 11.sp, color: AppColor.textGray),
          ),
          TextSpan(
            text: "PrivacyPolicy.",
            style: AppTextStyle.getFontStyle(fontSize: 11.sp, height: 2),
          ),
        ],
      ),
    );
  }
}
