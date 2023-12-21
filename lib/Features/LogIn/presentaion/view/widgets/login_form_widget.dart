import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/App_Theme/text_style.dart';
import 'package:my_advanced_app/Core/Routing/routes.dart';
import 'package:my_advanced_app/Core/Widgets/app_text_form_field.dart';
import 'package:my_advanced_app/Core/Widgets/main_button.dart';
import 'package:my_advanced_app/Core/helpers/app_regex.dart';
import 'package:my_advanced_app/Core/helpers/extensions.dart';
import 'package:my_advanced_app/Features/LogIn/data/Models/login_request_model.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/alreadt_have_account.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/password_validations.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/terms_conditions_text.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/state.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key, required this.isVisiablePassword});
  final bool isVisiablePassword;

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpacialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController!.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController!.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController!.text);
        hasNumber = AppRegex.hasNumber(passwordController!.text);
        hasSpacialCharacters =
            AppRegex.hasSpecialCharacter(passwordController!.text);
        hasMinLength = AppRegex.hasMinLength(passwordController!.text);
      });
    });
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.get(context).formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormFieldContainer(
            hint: "Email",
            controller: emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter Email';
              }
              return null;
            },
          ),
          Gap(16.h),
          TextFormFieldContainer(
            hint: "Password",
            controller: passwordController,
            obscureText: !widget.isVisiablePassword,
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
                widget.isVisiablePassword
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: AppColor.primary,
              ),
            ),
          ),
          const Gap(24),
          PasswordValidition(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpacialCharacters: hasSpacialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
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
          BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              loginActions(state, context);
            },
            child: MainButton(
              label: "Login",
              onPressed: () {
                validationMethod(context);
              },
            ),
          ),
          Gap(18.h),
          const TermsConditionsText(),
          Gap(60.h),
          const AlreadtHaveAccount()
        ],
      ),
    );
  }

  void loginActions(LoginState state, BuildContext context) {
    if (state is LoginLoadingState) {
      showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primary,
            ),
          );
        },
      );
    } else if (state is LoginSuccessState) {
      context.pop();
      context.pushReplacementNamed(Routes.homeScreen);
    } else if (state is LoginFailureState) {
      context.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColor.primary,
          content: Text(
            "${state.error} 😞",
            style: AppTextStyle.getFontStyle(color: AppColor.white),
          ),
        ),
      );
    }
  }

  void validationMethod(BuildContext context) {
    if (LoginCubit.get(context).formKey.currentState!.validate()) {
      LoginCubit.get(context).userLogin(
        loginRequestModel: LoginRequestModel(
          email: emailController!.text,
          password: passwordController!.text,
        ),
      );
    }
  }
}
