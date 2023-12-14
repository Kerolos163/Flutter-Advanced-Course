import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_advanced_app/Core/App_Theme/app_color.dart';
import 'package:my_advanced_app/Core/Routing/app_router.dart';
import 'package:my_advanced_app/Core/Routing/routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor.primary,
          scaffoldBackgroundColor: AppColor.white,
        ),
        onGenerateRoute: AppRouter.generateRouter,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
