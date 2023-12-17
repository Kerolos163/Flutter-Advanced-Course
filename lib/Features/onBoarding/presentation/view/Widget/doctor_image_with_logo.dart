import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/App_Theme/app_color.dart';
import '../../../../../Core/App_Theme/text_style.dart';
import '../../../../../Core/asset_manager/app_image.dart';
import '../../../../../Core/asset_manager/app_svg.dart';

class DoctorImageWithLogo extends StatelessWidget {
  const DoctorImageWithLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppSVG.appLogoWithOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.white,
                AppColor.white.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, 0.4],
            ),
          ),
          child: Image.asset(AppImage.doctorImage),
        ),
        Positioned(
          right: 5,
          left: 5,
          bottom: 30,
          child: Text(
            "Best Doctor Appointment App",
            textAlign: TextAlign.center,
            style: AppTextStyle.getFontStyle(
              color: AppColor.primary,
              fontWeight: FontWeight.w700,
              fontSize: 32.sp,
              height: 1.4,
            ),
          ),
        )
      ],
    );
  }
}
