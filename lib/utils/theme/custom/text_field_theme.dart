import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFieldTheme {
  MyTextFieldTheme._();
  FocusNode myFocusNode = FocusNode();

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle:
        const TextStyle().copyWith(fontSize: 14.sp, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14.sp, color: Colors.white),
    errorStyle: const TextStyle()
        .copyWith(fontStyle: FontStyle.normal, fontSize: MySizes.fontSizeSm),
    floatingLabelStyle: const TextStyle().copyWith(
        color: MyColors.white.withOpacity(0.8), fontSize: MySizes.fontSizeSm),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.w),
        borderSide: BorderSide(width: 1.w, color: Colors.grey)),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: MyColors.primary),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.orange),
    ),
  );

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle:
        const TextStyle().copyWith(fontSize: 14.sp, color: MyColors.black),
    hintStyle:
        const TextStyle().copyWith(fontSize: 14.sp, color: MyColors.black),
    errorStyle: const TextStyle()
        .copyWith(fontStyle: FontStyle.normal, fontSize: MySizes.fontSizeSm),
    floatingLabelStyle: const TextStyle().copyWith(
        color: MyColors.black.withOpacity(0.8), fontSize: MySizes.fontSizeSm),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.w),
        borderSide: BorderSide(width: 1.w, color: Colors.grey)),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: MyColors.primary),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.w),
      borderSide: BorderSide(width: 1.w, color: Colors.orange),
    ),
  );
}
