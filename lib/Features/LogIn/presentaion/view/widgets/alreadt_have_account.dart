import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/App_Theme/text_style.dart';

class AlreadtHaveAccount extends StatelessWidget {
  const AlreadtHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "Already have an account yet? ",
              style: AppTextStyle.getFontStyle(
                fontSize: 11.sp,
              ),
            ),
            TextSpan(
              text: "Sign Up",
              style: AppTextStyle.getFontStyle(
                  fontSize: 11.sp, color: AppColor.primary),
            ),
          ],
        ),
      ),
    );
  }
}
