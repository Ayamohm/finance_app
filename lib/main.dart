import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/theme_data.dart';
import 'package:finance_app/features/onboarding_screen/onboarding_screen.dart';
import 'package:finance_app/routes/Route_generate.dart';
import 'package:finance_app/widgets/PrimaryOutlineBtnWidgets.dart';
import 'package:finance_app/widgets/TextFields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppThemes.lighttheme,
        routerConfig: RouteGenerationConfig.goRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}