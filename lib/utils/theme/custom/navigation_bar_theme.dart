import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class MyNavigationBarTheme {
  MyNavigationBarTheme._();

  static final lightNavigationBarTheme = NavigationBarThemeData(
      backgroundColor: MyColors.light,
      
      indicatorColor: MyColors.dark.withOpacity(0.1),
      // surfaceTintColor: Colors.transparent,
      labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) => states.contains(MaterialState.selected)
            ? const TextStyle(color: MyColors.primary)
            : const TextStyle(color: Colors.black),
      ),
      iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
          (Set<MaterialState> states) => states.contains(MaterialState.selected)
              ? const IconThemeData(color: MyColors.primary)
              : const IconThemeData(color: MyColors.dark)));

  static final darkNavigationBarTheme = NavigationBarThemeData(
      backgroundColor: MyColors.dark,
      indicatorColor: MyColors.light.withOpacity(0.1),
      // surfaceTintColor: Colors.transparent,
      labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) => states.contains(MaterialState.selected)
            ? const TextStyle(color: MyColors.primary)
            : const TextStyle(color: Colors.white),
      ),
      iconTheme: MaterialStateProperty.resolveWith<IconThemeData?>(
          (Set<MaterialState> states) => states.contains(MaterialState.selected)
              ? const IconThemeData(color: MyColors.primary)
              : const IconThemeData(color: MyColors.light)));
}
