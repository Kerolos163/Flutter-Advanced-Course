import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../Core/Widgets/app_text_form_field.dart';
import 'widgets/welcome_back_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              const WelcomeBackContainer(),
              Gap(36.h),
              const LoginFormWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key, this.myKey});
  final Key? myKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: myKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormFieldContainer(
            hint: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email';
              }
              return null;
            },
          ),
          Gap(16.h),
          TextFormFieldContainer(
            hint: "Password",
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Password';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

