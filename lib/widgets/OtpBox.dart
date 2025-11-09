import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otpbox extends StatelessWidget {
  int otp;
   Otpbox({super.key, required this.otp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70.w,
        height: 60.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(otp.toString(),style: AppStyle.primaryheadlinestyle,)
        ),
      ),
    );
  }
}
