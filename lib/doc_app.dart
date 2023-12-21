import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/App_Theme/app_color.dart';
import 'Core/Routing/app_router.dart';
import 'Core/Routing/routes.dart';

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
          primarySwatch: Colors.blue,
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: AppColor.primary.withOpacity(.4),
            cursorColor: AppColor.primary,
            selectionHandleColor: AppColor.primary,
          ),
        ),
        onGenerateRoute: AppRouter.generateRouter,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
