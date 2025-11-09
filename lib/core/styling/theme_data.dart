import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes{
  static final lighttheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: AppFonts.mainfont,
    textTheme: TextTheme(
          titleLarge: AppStyle.primaryheadlinestyle,
          titleMedium: AppStyle.secoundrysuptitlestyle,
        ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textTheme: ButtonTextTheme.primary,
    )

  ) ;
}