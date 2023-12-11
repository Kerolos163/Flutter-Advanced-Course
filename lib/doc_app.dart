import 'package:flutter/material.dart';
import 'package:my_advanced_app/Core/Routing/app_router.dart';
import 'package:my_advanced_app/Core/Routing/routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRouter,
      initialRoute: Routes.onBoardingScreen,
    );
  }
}
