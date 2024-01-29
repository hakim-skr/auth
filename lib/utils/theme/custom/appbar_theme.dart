import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppbarTheme {
  MyAppbarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0.5,
    centerTitle: false,
    scrolledUnderElevation: 8,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.sp),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24.sp),
    titleTextStyle: TextStyle(
        fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0.5,
    centerTitle: false,
    scrolledUnderElevation: 8,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.sp),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24.sp),
    titleTextStyle: TextStyle(
        fontSize: 18.0.sp, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
