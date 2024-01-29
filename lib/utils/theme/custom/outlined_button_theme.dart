import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._();
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: MyColors.primary,
          side: const BorderSide(color: MyColors.primary),
          textStyle: TextStyle(
              fontSize: 16.sp,
              color: MyColors.primary,
              fontWeight: FontWeight.w600),
          padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 20.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.w))));

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: MyColors.primary,
          side: const BorderSide(color: MyColors.primary),
          textStyle: TextStyle(
              fontSize: 16.sp,
              color: MyColors.primary,
              fontWeight: FontWeight.w600),
          padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 20.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.w))));
}
