import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 8.r,
    foregroundColor: Colors.white,
    backgroundColor: MyColors.primary,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    side: const BorderSide(color: MyColors.primary),
    padding: EdgeInsets.symmetric(vertical: 18.sp),
    textStyle: TextStyle(
        fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 8.r,
    foregroundColor: Colors.white,
    backgroundColor: MyColors.primary,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    side: const BorderSide(color: MyColors.primary),
    padding: EdgeInsets.symmetric(vertical: 18.sp),
    textStyle: TextStyle(
        fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
