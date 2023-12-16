import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../Core/App_Theme/app_color.dart';
import '../../../../../Core/App_Theme/text_style.dart';

class WelcomeBackContainer extends StatelessWidget {
  const WelcomeBackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back",
          style: AppTextStyle.getFontStyle(
            color: AppColor.primary,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(8.h),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: AppTextStyle.getFontStyle(
              color: AppColor.gray, fontSize: 16.sp, height: 1.8),
        ),
      ],
    );
  }
}
