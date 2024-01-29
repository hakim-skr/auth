import 'package:auth_app/common/popups/loader.dart';
import 'package:auth_app/common/popups/snack_bar.dart';
import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:auth_app/data/repositories/user_repo.dart';
import 'package:auth_app/features/auth/screens/signup/verify_email_screen.dart';
import 'package:auth_app/features/personalization/models/user_model.dart';
import 'package:auth_app/services/network_controller.dart';
import 'package:auth_app/utils/formatters/formatter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  // variables :
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // states :
  Rx<bool> hidePassword = true.obs;
  Rx<bool> privacyPolicy = false.obs;
  Rx<bool> hideConfirmPassword = false.obs;

  // functions :
  Future signup() async {
    try {
      //start loading
      Loader.loader();
      //check internet connectivity
      final connected = await NetworkController.instance.isConected();
      if (!connected) return;

      // form validatioin
      if (!formKey.currentState!.validate()) {
        if (Get.overlayContext != null) {
          Navigator.of(Get.overlayContext!).pop();
        }
        return;
      }

      // privacy policy checking
      if (!privacyPolicy.value) {
        if (Get.overlayContext != null) {
          Navigator.of(Get.overlayContext!).pop();
        }
        MySnackBar.warningSnackBar(
            title: "Accept privacy and policy",
            message: "sdfadsfasdf asf asdfa sdfasd fsdfa ",
            duration: const Duration(seconds: 2));
        return;
      }
      // remove dots from email to avoid multiple accounts creation by one email
      final formattedEmail = MyFormatter.formatEmail(email.value.text);
      // register :
      UserCredential? userCredential = await AuthenticationRepository.inctence
          .registerWithEmailAndPassword(
              formattedEmail, password.value.text.trim());
      // creat userModel :
      UserModel newUser = UserModel(
          userId: userCredential!.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          email: formattedEmail,
          password: password.text.trim());
      // add user to fireStore :
      final UserRepository userRepository = Get.put(UserRepository());
      await userRepository.saveUser(newUser);

      if (Get.overlayContext != null) {
        Navigator.of(Get.overlayContext!).pop();
      }
      MySnackBar.successSnackBar(
          title: "Congratulations",
          message: "your account has been created !",
          duration: const Duration(seconds: 2));
      Get.offAll(() => VerifyEmailScreen(
            email: newUser.email,
          ));
    } catch (e) {
      if (kDebugMode) print(e);
    } finally {}
  }
  // *-------------------------------------------------- UI-related functions ------------------------------*//
  // widgets :
  Widget confirmPasswordsufffixIcon() => IconButton(
        icon: Icon(instance.hideConfirmPassword.value
            ? Iconsax.eye_slash
            : Iconsax.eye),
        onPressed: () {
          instance.hideConfirmPassword.value =
              !instance.hideConfirmPassword.value;
        },
      );
  Widget passwordsuffixIcon() => IconButton(
        icon:
            Icon(instance.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
        onPressed: () {
          instance.hidePassword.value = !instance.hidePassword.value;
        },
      );
}
