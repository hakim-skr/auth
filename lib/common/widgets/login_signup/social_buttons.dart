import 'package:auth_app/features/auth/controllers/login_controller.dart';
import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, AuthButtonType, FacebookAuthButton;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SocialButtons extends StatelessWidget {
  SocialButtons({
    super.key,
  });

  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MySizes.spaceBtwItems),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GoogleAuthButton(
            onPressed: () => loginController.signinWithGoogle(),
            darkMode: MyHelper.isDarkMode(context),
            style: AuthButtonStyle(
              buttonColor:
                  MyHelper.isDarkMode(context) ? MyColors.dark : MyColors.light,
              elevation: 0,
              buttonType: AuthButtonType.icon,
              // borderRadius: 20.r,
              iconSize: MySizes.iconLg,
              // iconType: AuthIconType.secondary,
            ),
          ),
          SizedBox(
            width: MySizes.spaceBtwItems,
          ),
          FacebookAuthButton(
              onPressed: () {
                Get.snackbar(
                  "title",
                  "message",
                  isDismissible: true,
                  shouldIconPulse: true,
                  colorText: Colors.white,
                  backgroundColor: MyColors.success,
                  snackPosition: SnackPosition.TOP,
                  duration: const Duration(seconds: 4),
                  margin: const EdgeInsets.all(10),
                  icon: const Icon(Iconsax.check, color: MyColors.white),
                );
              },
              darkMode: MyHelper.isDarkMode(context),
              style: AuthButtonStyle(
                buttonColor: MyHelper.isDarkMode(context)
                    ? MyColors.dark
                    : MyColors.light,
                elevation: 0,
                iconSize: MySizes.iconLg,
                buttonType: AuthButtonType.icon,
                // iconType: AuthIconType.secondary,
                // borderRadius: 20.r,
              )),
        ],
      ),
    );
  }
}
