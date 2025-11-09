import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/routes/Route_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styling/app_colors.dart';
import '../../widgets/PrimaryOutlineBtnWidgets.dart';
import '../../widgets/TextFields.dart';
import '../../widgets/primarybtnwidgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text('Welcome to Finance App',
              style: AppStyle.primaryheadlinestyle,
              textAlign: TextAlign.center,),
            Image.network('https://img.freepik.com/premium-photo/vector-illustration-splash-screen-finance-app_996136-347.jpg'),
            //Image.asset(AppAssets.logo,width: double.infinity,height: 570.h,),
            SizedBox(height: 20.h),
            PrimaryBtnWidgets(
              buttonText: 'Login',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.LoginScreen);
              },
            ),
            SizedBox(height: 20.h),
            PrimaryOutLineBtnWidgets(
              buttonText: 'Register',
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
