import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:auth_app/features/auth/controllers/verify_email_controller.dart';
import 'package:auth_app/routes/routes_names.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: IconButton(
              onPressed: () {
                AuthenticationRepository.inctence.logOut();
                Get.offAllNamed(RoutesNames.login_screen);
              },
              icon: const Icon(CupertinoIcons.clear),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                MyImages.svgEmail,
                width: 0.6.sw,
                // height: 0.4.sh,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(
                "Verify your email adress ! ",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                email ?? "example@example.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                textAlign: TextAlign.center,
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Confirm"),
                    onPressed: () => controller.checkEmailVerification(),
                  )),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide.none),
                      ),
                      onPressed: () => controller.sendEmailVerification(),
                      child: const Text("Resend Email"))),
            ],
          ),
        ),
      ),
    );
  }
}
