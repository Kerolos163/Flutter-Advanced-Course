import 'package:flutter/material.dart';
import 'package:my_advanced_app/Core/Routing/routes.dart';
import 'package:my_advanced_app/Features/onBoarding/presentation/view/on_boarding_view.dart';

class AppRouter {
  static Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());

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
