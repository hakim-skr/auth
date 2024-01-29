import 'package:auth_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MySnackBar {
  MySnackBar._();
  static successSnackBar(
      {required String title,
      message = "",
      Duration duration = const Duration(seconds: 1)}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: MyColors.success,
        snackPosition: SnackPosition.TOP,
        duration: duration,
        margin: const EdgeInsets.all(10),
        icon: const Icon(Iconsax.check, color: MyColors.white),
      );
    }
  }

  static connectionSnackBar() {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
          messageText: const Text('PLEASE CONNECT TO THE INTERNET',
              style: TextStyle(color: Colors.white, fontSize: 14)),
          isDismissible: false,
          duration: const Duration(days: 1),
          backgroundColor: Colors.red[400]!,
          icon: const Icon(
            Icons.wifi_off,
            color: Colors.white,
            size: 35,
          ),
          margin: EdgeInsets.zero,
          snackPosition: SnackPosition.TOP,
          snackStyle: SnackStyle.GROUNDED);
    }
  }

  static warningSnackBar(
      {required String title,
      message = "",
      Duration duration = const Duration(seconds: 1)}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: Colors.white,
          backgroundColor: MyColors.warning,
          snackPosition: SnackPosition.BOTTOM,
          duration: duration,
          margin: const EdgeInsets.all(10),
          icon: const Icon(Iconsax.check, color: MyColors.white));
    }
  }

  static errorSnackBar(
      {required String title,
      message = "",
      Duration duration = const Duration(seconds: 1)}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: MyColors.error,
        snackPosition: SnackPosition.BOTTOM,
        duration: duration,
        margin: const EdgeInsets.all(10),
        icon: const Icon(Iconsax.check, color: MyColors.white),
      );
    }
  }
}
