import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldsWidget extends StatelessWidget {
    final String? labelText;
    final Widget? suffixIcon;
    final bool? ispassword;
    final Controller;
    final Validator;
  const TextfieldsWidget({
    super.key,
    this.labelText,
    this.suffixIcon, this.ispassword, this.Validator, this.Controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331.w,
      height: 56.h,
      child: TextFormField(
        controller:Controller,
        validator: Validator,
        cursorColor: AppColors.textfieldTextColor,
        obscureText: ispassword?? false,
        decoration: InputDecoration(
          labelText:labelText?? '',
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
          fillColor: AppColors.textfieldColor,
          labelStyle: TextStyle(color: AppColors.textfieldTextColor,
          fontSize: 15.sp,
            fontWeight: FontWeight.w400,

          ),
          suffixIcon: suffixIcon ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textfieldBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
