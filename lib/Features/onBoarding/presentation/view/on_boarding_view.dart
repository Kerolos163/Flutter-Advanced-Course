import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
