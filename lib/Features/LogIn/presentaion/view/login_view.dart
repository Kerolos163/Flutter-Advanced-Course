import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/view/widgets/login_form_widget.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/state.dart';

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
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return LoginFormWidget(
                    isVisiablePassword: LoginCubit.get(context).isVisiable,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
