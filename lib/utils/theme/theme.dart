import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/theme/custom/appbar_theme.dart';
import 'package:auth_app/utils/theme/custom/bottom_shet_theme.dart';
import 'package:auth_app/utils/theme/custom/checkbox_theme.dart';
import 'package:auth_app/utils/theme/custom/chip_theme.dart';
import 'package:auth_app/utils/theme/custom/elevated_button_theme.dart';
import 'package:auth_app/utils/theme/custom/navigation_bar_theme.dart';
import 'package:auth_app/utils/theme/custom/outlined_button_theme.dart';
import 'package:auth_app/utils/theme/custom/text_field_theme.dart';
import 'package:auth_app/utils/theme/custom/text_theme.dart';
import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();
  static ThemeData lightMode = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: MyColors.primary,
      scaffoldBackgroundColor: MyColors.light,
      appBarTheme: MyAppbarTheme.lightAppBarTheme,
      bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
      chipTheme: MyChipTheme.lightChipTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
      textTheme: MyTextTheme.lightTextTheme,
      navigationBarTheme: MyNavigationBarTheme.lightNavigationBarTheme);

  static ThemeData darkMode = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    primaryColor: MyColors.primary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: MyColors.black,
    appBarTheme: MyAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    navigationBarTheme: MyNavigationBarTheme.darkNavigationBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
    textTheme: MyTextTheme.darkTextTheme,
  );
}
