import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class AppStyle{
  static  TextStyle primaryheadlinestyle = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
    fontFamily: AppFonts.mainfont,
  );
  static TextStyle secoundrysuptitlestyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryColor,
    fontFamily: AppFonts.mainfont,
  );
  static TextStyle blackbox= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.boxColorblack,
    fontFamily: AppFonts.mainfont,
  );
  static TextStyle grybox = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.boxColorgray,
    fontFamily: AppFonts.mainfont,
  );
}