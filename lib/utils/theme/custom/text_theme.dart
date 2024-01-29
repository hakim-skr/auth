import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextTheme {
    static TextTheme darkTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32.0.sp,fontWeight: FontWeight.bold,color: MyColors.textWhite),
      headlineMedium: const TextStyle().copyWith(fontSize: 24.0.sp,fontWeight: FontWeight.w600,color: MyColors.textWhite),
      headlineSmall: const TextStyle().copyWith(fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: MyColors.textWhite),
      
      titleLarge: const TextStyle().copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: MyColors.textWhite),
      titleMedium: const TextStyle().copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w500, color: MyColors.textWhite),
      titleSmall: const TextStyle().copyWith(fontSize: 16.8.sp, fontWeight: FontWeight.w400, color: MyColors.textWhite),
      
      bodyLarge: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: MyColors.textWhite),
      bodyMedium: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.normal, color: MyColors.textWhite),
      bodySmall: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: MyColors.textWhite.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(fontSize: 12.0.sp, fontWeight: FontWeight.normal, color: MyColors.textWhite),
      labelMedium: const TextStyle().copyWith(fontSize: 12.0.sp, fontWeight: FontWeight. normal, color: MyColors.textWhite.withOpacity(0.5)),
  );

  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32.0.sp,fontWeight: FontWeight.bold,color: MyColors.textBlack),
      headlineMedium: const TextStyle().copyWith(fontSize: 24.0.sp,fontWeight: FontWeight.w600,color: MyColors.textBlack),
      headlineSmall: const TextStyle().copyWith(fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: MyColors.textBlack),
      
      titleLarge: const TextStyle().copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: MyColors.textBlack),
      titleMedium: const TextStyle().copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w500, color: MyColors.textBlack),
      titleSmall: const TextStyle().copyWith(fontSize: 16.8.sp, fontWeight: FontWeight.w400, color: MyColors.textBlack),
      
      bodyLarge: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: MyColors.textBlack),
      bodyMedium: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.normal, color: MyColors.textBlack),
      bodySmall: const TextStyle().copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: MyColors.textBlack.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(fontSize: 12.0.sp, fontWeight: FontWeight.normal, color: MyColors.textBlack),
      labelMedium: const TextStyle().copyWith(fontSize: 12.0.sp, fontWeight: FontWeight. normal, color: MyColors.textBlack.withOpacity(0.5)),
  );
}
