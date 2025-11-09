import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../routes/Route_.dart';
import '../widgets/TextFields.dart';
import '../widgets/primarybtnwidgets.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool ispassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
            Text('Welcome back! Again!',style: AppStyle.primaryheadlinestyle,),
            SizedBox(height: 20.h),
            TextfieldsWidget(
              labelText: 'Enter Your Email',
              ispassword: false,
            ),
            SizedBox(height: 20.h),
            TextfieldsWidget(
              labelText: 'Enter Your Password',
              ispassword: ispassword,
              suffixIcon: IconButton(
                color: AppColors.textfieldTextColor,
                onPressed: () {
                  setState(() {
                    ispassword =!ispassword;
                  });
                },
                icon: Icon(
                    ispassword ? Icons.remove_red_eye_outlined:Icons.visibility_off_outlined),
              ),
            ),
              SizedBox(height: 20.h),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: AppStyle.secoundrysuptitlestyle.copyWith(color: Color(0xff6A707C)),)),
              SizedBox(height: 20.h),
              PrimaryBtnWidgets(
                buttonText: 'Login',
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.LoginScreen);
                },
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(
                    width: 100.w,
                  child: const Divider(),
                  ),
                  SizedBox(width: 12,),
                  Text('Or Login With',style: AppStyle.secoundrysuptitlestyle.copyWith(color: Color(0xff6A707C)),),
                  SizedBox(width: 12,),
                  SizedBox(
                    width: 100.w,
                    child: const Divider(),
                  ),

                ]
              )

            ]
        ),
      ),
    );
  }
}
