import 'package:auth_app/common/widgets/login_signup/form_divider.dart';
import 'package:auth_app/common/widgets/login_signup/social_buttons.dart';
import 'package:auth_app/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyHelper.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          bottomOpacity: 0.5,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Iconsax.arrow_left,
                color: dark ? MyColors.light : MyColors.dark,
              )),
        ),
        body: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!FocusScope.of(context).hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Padding(
                  padding: EdgeInsets.all(MySizes.defaultSpace),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Let's create your account ",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SiginupForm(),
                        const FormDivider(
                          text: "or sign up with",
                        ),
                        SocialButtons(),
                        Center(
                          child: Text.rich(TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account?",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                  text: " Login ",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.back(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                          decorationColor: dark
                                              ? MyColors.light
                                              : MyColors.primary,
                                          color: dark
                                              ? MyColors.light
                                              : MyColors.primary)),
                            ],
                          )),
                        ),
                      ]),
                ))));
  }
}
