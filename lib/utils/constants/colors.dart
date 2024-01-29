import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  // app baisc colors :
  static const Color primary = Colors.red;
  static const Color secondery = Colors.white;
  static const Color accent = Colors.grey;

  // text colors :
  static const Color textPrimary = Colors.black;
  static const Color textBlack = Colors.black;
  static const Color textSecendery = Colors.grey;
  static const Color textWhite = Colors.white;

  // background colors :
  static const Color light = Color.fromARGB(255, 255, 255, 255);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Colors.white;

  // background containers colors :
  static const Color lightContainer = Colors.white;
  static Color darkContanier = MyColors.light.withOpacity(0.1);

  // buttons colors :
  static const Color buttonPrimary = MyColors.primary;
  static const Color buttonSecondery = Colors.grey;
  static Color buttondisabled = Colors.grey.withOpacity(0.5);
  // border colors :
  static const Color borderPrimary = Colors.white;
  static const Color borderSecondery = Colors.grey;

  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.700, -0.700),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
