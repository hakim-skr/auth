import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Loader {
  Loader._();
  static loader({String? text}) async {
    await showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (context) => PopScope(
            canPop: true,
            child: Container(
              alignment: Alignment.center,
              width: 1.sw,
              height: 1.sh,
              color: MyHelper.isDarkMode(context)
                  ? MyColors.light.withOpacity(0.1)
                  : MyColors.dark.withOpacity(0.1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(
                      color: MyColors.primary,
                    ),
                    SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    text != null
                        ? Text(
                            text,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        : Container(),
                  ]),
            ))).then((value) => null);
  }
}
