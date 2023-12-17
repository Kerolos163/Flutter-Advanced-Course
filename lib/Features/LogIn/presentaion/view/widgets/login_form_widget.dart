import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/App_Theme/text_style.dart';
import 'package:my_advanced_app/Core/Widgets/app_text_form_field.dart';
import 'package:my_advanced_app/Core/Widgets/main_button.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/alreadt_have_account.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/terms_conditions_text.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget(
      {super.key, this.myKey, required this.isVisiablePassword});
  final Key? myKey;
  final bool isVisiablePassword;
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
            obscureText: !isVisiablePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Password';
              }
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                LoginCubit.get(context).changeVisibility();
              },
              icon: Icon(
                isVisiablePassword ? Icons.visibility_off : Icons.visibility,
                color: AppColor.primary,
              ),
            ),
          ),
          Gap(16.h),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: RawMaterialButton(
              onPressed: () {},
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Forgot Password?",
                style: AppTextStyle.getFontStyle(
                  color: AppColor.primary,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          Gap(40.h),
          const MainButton(label: "Login"),
          Gap(18.h),
          const TermsConditionsText(),
          Gap(60.h),
          const AlreadtHaveAccount()
        ],
      ),
    );
  }
}
