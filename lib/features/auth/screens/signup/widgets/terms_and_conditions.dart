import 'dart:ui';

import 'package:auth_app/features/auth/controllers/signup_controller.dart';
import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class termsAndConditionsCheckbox extends StatelessWidget {
  const termsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelper.isDarkMode(context);
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(
            height: 24.r,
            width: 24.r,
            child: Obx(
              () => Checkbox(
                  value: controller.privacyPolicy.value,
                  onChanged: (value) => controller.privacyPolicy.value =
                      !controller.privacyPolicy.value),
            )),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: " i agree to ",
              style: Theme.of(context).textTheme.bodySmall,
              recognizer: TapGestureRecognizer()
                ..onTap = () => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value),
          TextSpan(
              text: "privacy policy",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MyColors.light : MyColors.primary,
                  color: dark ? MyColors.light : MyColors.primary)),
          TextSpan(text: " and ", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "term of use",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MyColors.light : MyColors.primary,
                  color: dark ? MyColors.light : MyColors.primary)),
        ]))
      ],
    );
  }
}
