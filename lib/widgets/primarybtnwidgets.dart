import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryBtnWidgets extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final double? height;
  final Color? buttonColor;
  final double? borderRadius;
  final void Function()? onPressed;
  final Color? textColor;
  final double? fontSize;

  const PrimaryBtnWidgets({
    super.key,
    this.buttonText,
    this.width,
    this.height,
    this.buttonColor,
    this.borderRadius,
    this.textColor,
    this.onPressed, this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 8.r),
          ),
          fixedSize: Size(
            width?? 331.w,
            height?? 56.h,
          )
        ),
        onPressed: onPressed,
        child: Text(
          buttonText?? '',
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            fontFamily: AppFonts.mainfont,
          ),
        ),
        );
  }
}
