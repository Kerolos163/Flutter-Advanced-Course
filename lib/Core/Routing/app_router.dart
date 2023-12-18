import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_advanced_app/Core/di/dependency_injection.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';

import '../../Features/LogIn/presentaion/view/login_view.dart';
import '../../Features/onBoarding/presentation/view/on_boarding_view.dart';
import 'routes.dart';

class AppRouter {
  static Route generateRouter(RouteSettings settings) {
    // ignore: unused_local_variable
    var argumant = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text(
            'un defined route!!',
          ),
        ),
      ),
    );
  }
}
