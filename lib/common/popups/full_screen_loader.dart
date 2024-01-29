import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static loadingDialog(String text, String? imagePath) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (context) => PopScope(
          canPop: true,
          child: SizedBox(
            child: Container(
              width: 1.sw,
              height: 1.sh,
              color:
                  MyHelper.isDarkMode(context) ? MyColors.dark : MyColors.light,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imagePath != null
                      ? Image.asset(
                          imagePath,
                          width: 0.5.sw,
                        )
                      : Container(),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
