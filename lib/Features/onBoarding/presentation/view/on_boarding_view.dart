import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/App_Theme/text_style.dart';
import 'package:my_advanced_app/Core/Routing/routes.dart';
import 'package:my_advanced_app/Core/Widgets/main_button.dart';
import 'package:my_advanced_app/Core/helpers/extensions.dart';
import 'package:my_advanced_app/Features/onBoarding/presentation/view/Widget/doctor_image_with_logo.dart';
import 'package:my_advanced_app/Features/onBoarding/presentation/view/Widget/logo_with_title.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: ListView(
            children: [
              const LogoWithTitle(),
              Gap(30.h),
              const DoctorImageWithLogo(),
              Gap(8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.getFontStyle(
                        fontSize: 12.sp,
                        color: AppColor.gray,
                      ),
                    ),
                    Gap(32.h),
                    MainButton(
                      label: "Get Started",
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
