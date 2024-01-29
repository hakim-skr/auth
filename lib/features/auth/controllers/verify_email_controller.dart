import 'dart:async';

import 'package:auth_app/common/popups/snack_bar.dart';
import 'package:auth_app/common/widgets/success_screen/success_screen.dart';
import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  // send verification email whenever verify screen appears & auto redirect

  @override
  void onInit() {
    // TODO: implement onInit
    print("debug : init VerifyEmailController:  ========");
    sendEmailVerification();
    autoRedirectValidatedEmail();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.inctence.sendEmailVerification();
      MySnackBar.successSnackBar(
          title: "Email sent ",
          message: "please check your inbox and verify your email",
          duration: const Duration(seconds: 4));
    } catch (e) {
      MySnackBar.errorSnackBar(
          title: "email verification erorr",
          message: e.toString(),
          duration: const Duration(seconds: 4));
      if (kDebugMode) {
        print(e);
      }
    }
  }

  autoRedirectValidatedEmail() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      print("==> email verified : ${user?.emailVerified}");

      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            subTitle: "email verified successfully ",
            title: "your account have been created successfully",
            onPressed: () => AuthenticationRepository.inctence.authRedirect()));
      }
    });
  }

  // manually check if email verified :
  checkEmailVerification() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser?.emailVerified ?? false) {
      Get.offAll(() => SuccessScreen(
          title: "email verified successfully ",
          subTitle: "your account have been created successfully",
          onPressed: () => AuthenticationRepository.inctence.authRedirect()));
    } else {
      MySnackBar.warningSnackBar(
          title: "please verify your email first 🙂",
          message:
              "check your inbox and click in the link we sent you to verify your email",
          duration: const Duration(seconds: 4));
    }
  }
}
