import 'package:auth_app/common/popups/snack_bar.dart';
import 'package:auth_app/features/auth/screens/signup/verify_email_screen.dart';
import 'package:auth_app/routes/routes_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  static final AuthenticationRepository inctence = Get.find();
  // variables:
  final devicestorge = GetStorage();
  final _auth = FirebaseAuth.instance;

  // called in the main.dart after firebase initialization :
  @override
  void onReady() {
    authRedirect();
    super.onReady();
  }

  // recirect function
  void logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed(RoutesNames.login_screen);
    } catch (e) {
      if (kDebugMode) {
        print("auth_repo : $e");
      }
    }
  }

  void authRedirect() async {
    final user = _auth.currentUser;
    // check user
    if (user != null) {
      if (user.emailVerified) {
        Get.offAllNamed(RoutesNames.navigation_menu);
      } else {
        Get.offAll(() => VerifyEmailScreen(email: user.email));
      }
      return;
    }
    //
    devicestorge.writeIfNull("firstTime", true);
    await Future.delayed(const Duration(milliseconds: 1000));
    !devicestorge.read("firstTime")
        ? await Get.offAllNamed(RoutesNames.login_screen)
        : await Get.offAllNamed(RoutesNames.onboarding_screen);
  }

  // -------------------------------- Email authentication [createUserWithEmailAndPassword] -------------------------------//
  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        if (kDebugMode) {
          print('The password provided is too weak.');
        }
      } else if (e.code == 'email-already-in-use') {
        //  if email-already-in-use : -------------------------------------------------------
        // -----> stop the loader :
        if (Get.overlayContext != null) {
          Navigator.of(Get.overlayContext!).pop();
        }
        // -----> show warning SnackBar :
        MySnackBar.warningSnackBar(
            title: "unavailable E-mail",
            message: "account already exists for that email.",
            duration: const Duration(seconds: 3));

        if (kDebugMode) {
          print('The account already exists for that email.');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  // ------------------------------------- [ verification email ] --------------------------
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  // ------------------------------------- [ signin with email & password ] --------------------------
  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        if (kDebugMode) {
          print('No user found for that email.');
        }
      } else if (e.code == 'wrong-password') {
        if (kDebugMode) {
          print('Wrong password provided for that user.');
        }
      }
      //------------------------------------------------------- show error :
      // stop the loader :
      if (Get.overlayContext != null) {
        Navigator.of(Get.overlayContext!).pop();
      }
      // show error message :
      MySnackBar.errorSnackBar(
          title: "Invalid email or password !",
          message: " Please verify your credentials and try again",
          duration: const Duration(seconds: 4));
    }
    return null;
  }

// =============================[Federated identity & social sign-in]===================================

  // ------------------------------------- [ signin with google :   ] -------------------------- :
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // Create a new credential
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final credential =
          await FirebaseAuth.instance.signInWithCredential(authCredential);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        if (kDebugMode) {
          print('No user found for that email.');
        }
      } else if (e.code == 'wrong-password') {
        if (kDebugMode) print('Wrong password provided for that user.');
      } else {
        if (kDebugMode) print('google signin Exeption : ${e.code}.');
      }

      //------------------------------------------------------- show error snack bar :
      // stop the loader :
      if (Get.overlayContext != null) {
        Navigator.of(Get.overlayContext!).pop();
      }
      // show error message :
      MySnackBar.errorSnackBar(
          title: "google sign in error!",
          message: " Please contact support !",
          duration: const Duration(seconds: 4));
    }
    return null;
  }
}
