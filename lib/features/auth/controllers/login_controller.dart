import 'package:auth_app/common/popups/loader.dart';
import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:auth_app/data/repositories/user_repo.dart';
import 'package:auth_app/features/personalization/models/user_model.dart';
import 'package:auth_app/services/network_controller.dart';
import 'package:auth_app/utils/formatters/formatter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

class LoginController extends GetxController {
  static final LoginController instance = Get.find();
  // variables :
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // states
  Rx<bool> hidePassword = true.obs;
  Rx<bool> privacyPolicy = false.obs;
  Rx<bool> rememberMe = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    email.text = localStorage.read("REMEMBER_ME_EMAIL") ?? "";
    super.onInit();
  }

  // functions :
  Future signin() async {
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
      // remove dots from email to avoid multiple accounts creation by one email
      final formattedEmail = MyFormatter.formatEmail(email.value.text);

      final UserCredential? userCredential = await AuthenticationRepository
          .inctence
          .signInWithEmailAndPassword(formattedEmail, password.text.trim());
      if (userCredential == null) return;

      // save email local storage :
      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.value.text.trim());
      }
      AuthenticationRepository.inctence.authRedirect();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {}
  }

  Future signinWithGoogle() async {
    try {
      //start loading
      Loader.loader();
      //check internet connectivity
      final connected = await NetworkController.instance.isConected();
      if (!connected) return;
      final UserCredential? userCredential =
          await AuthenticationRepository.inctence.signInWithGoogle();
      if (userCredential == null) return;
      // creat userModel :
      UserModel newUser = UserModel(
          userId: userCredential.user!.uid,
          firstName: UserModel.nameParts(userCredential.user!.displayName!)[0],
          lastName: UserModel.nameParts(userCredential.user!.displayName!)[1],
          username:
              UserModel.nameParts(userCredential.user!.displayName!).join(""),
          phoneNumber: userCredential.user!.phoneNumber ?? "",
          email: userCredential.user!.email!,
          password: password.text.trim());
      // add user to fireStore :
      final UserRepository userRepository = Get.put(UserRepository());
      await userRepository.saveUser(newUser);

      if (Get.overlayContext != null) {
        Navigator.of(Get.overlayContext!).pop();
      }
      // save email local storage :
      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.value.text.trim());
      }
      AuthenticationRepository.inctence.authRedirect();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {}
  }

  // toggle remamber me check box :
  void toggleRmemberme() {
    rememberMe.value = !rememberMe.value;
  }

  // *-------------------------------------------------- UI-related functions ------------------------------*//
  // widgets :
  Widget passwordsuffixIcon() => IconButton(
        icon: Icon(hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
        onPressed: () {
          hidePassword.value = !hidePassword.value;
        },
      );
}
