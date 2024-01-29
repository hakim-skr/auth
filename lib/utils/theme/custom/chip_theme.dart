import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyChipTheme {
  MyChipTheme._();

  static final ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: MyColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.w),
    checkmarkColor: Colors.white,
  );

  static final ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: MyColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.w),
    checkmarkColor: Colors.white,
  );
}
