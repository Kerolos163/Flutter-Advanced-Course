import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../viewModel/loginCubit/cubit.dart';
import '../viewModel/loginCubit/state.dart';
import 'widgets/login_form_widget.dart';
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
