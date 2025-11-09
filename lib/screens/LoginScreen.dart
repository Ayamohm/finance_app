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
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
    passwordController.addListener(() {
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                Text('Welcome back! Again!',style: AppStyle.primaryheadlinestyle,),
                SizedBox(height: 20.h),
                TextfieldsWidget(
                  Controller: emailController,
                  Validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Email';
                    }
                    return null;
                  },
                  labelText: 'Enter Your Email',
                  ispassword: false,
                ),
                SizedBox(height: 20.h),
                TextfieldsWidget(
                  Controller: passwordController,
                  Validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return 'Password must contain at least one uppercase letter';
                    }
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return 'Password must contain at least one lowercase letter';
                    }
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return 'Password must contain at least one number';
                    }
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least one special character';
                    }
                    if (value.contains(' ')) {
                      return 'Password cannot contain spaces';
                    }
                    if (value.length > 16) {
                      return 'Password cannot exceed 16 characters';
                    }
                    return null;
                  },
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
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pushNamed(AppRoutes.ForgetPass);
                        },
                        child: Text(
                          'Forget Password?',
                          style: AppStyle.secoundrysuptitlestyle.copyWith(color: Color(0xff6A707C)),),
                      )),
                  SizedBox(height: 20.h),
                  PrimaryBtnWidgets(
                    buttonText: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).pushNamed(AppRoutes.ForgetPass);
                      }
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
        ),
      ),
    );
  }
}
