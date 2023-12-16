import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../Core/App_Theme/text_style.dart';
import '../../../../../Core/asset_manager/app_svg.dart';

class LogoWithTitle extends StatelessWidget {
  const LogoWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppSVG.appLogo),
        Gap(8.w),
        Text(
          "Docdoc",
          style: AppTextStyle.getFontStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24.sp,
          ),
        )
      ],
    );
  }
}
