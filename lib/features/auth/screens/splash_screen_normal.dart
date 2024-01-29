import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashNormal extends StatelessWidget {
  const SplashNormal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelper.isDarkMode(context);
    return Scaffold(
      body: Container(
        color: dark ? MyColors.dark : MyColors.light,
        child: Center(
          child: Image.asset(
            MyImages.splash_logo,
            width: 0.6.sw,
          ),
        ),
      ),
    );
  }
}
