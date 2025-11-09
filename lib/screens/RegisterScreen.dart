import 'dart:ffi';

import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/routes/Route_.dart';
import 'package:finance_app/widgets/OtpBox.dart';
import 'package:finance_app/widgets/primarybtnwidgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/TextFields.dart';

class ForgetPass extends StatefulWidget {

  ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();

  @override
  void dispose(){
    otpController.dispose();
    super.dispose();
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('OTP Verification',style: AppStyle.primaryheadlinestyle,)),
              Text('Enter the verification code we just sent on your email address.',style: AppStyle.secoundrysuptitlestyle,),
              SizedBox(height: 35),
              PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 60,
                  fieldWidth: 70,
                  activeFillColor: AppColors.secondaryColor,
                  activeColor: AppColors.secondaryColor,
                  selectedFillColor: AppColors.secondaryColor,
                  selectedColor: AppColors.secondaryColor,
                  inactiveFillColor: AppColors.secondaryColor,
                  inactiveColor: AppColors.secondaryColor,
                  activeBorderWidth: 1,
                  selectedBorderWidth: 1,
                  inactiveBorderWidth: 1,
                ),
                obscureText: false,
                keyboardType: TextInputType.number,
                onChanged: (value){},
                onCompleted: (value){},
                validator: (value){
                  if (value==null||value.length<4) {
                    return "please enter a valid otp";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              PrimaryBtnWidgets(
                buttonText: 'Verify',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print('OTP verified:${otpController.text}');
                    GoRouter.of(context).pushNamed(AppRoutes.OnboardingScreen);
                  }
                }
              ),


            ]
          ),
        ),
      ),
    );
  }
}
