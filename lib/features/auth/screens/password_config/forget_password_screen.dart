import 'package:auth_app/common/widgets/success_screen/success_screen.dart';
import 'package:auth_app/routes/routes_names.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: IconButton(
              onPressed: () {
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
              SizedBox(height: MySizes.spaceBtwSections),
              Text(
                "Forget Password ",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                textAlign: TextAlign.center,
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: MySizes.spaceBtwSections * 2),
              SizedBox(
                child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Iconsax.direct_right))),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () => Get.off(() => SuccessScreen(
                          btnText: "Done",
                          onPressed: () =>
                              Get.offAllNamed(RoutesNames.login_screen),
                          imgUrl: MyImages.svgEmail,
                          title: "your reset email sent  successfully ! ",
                          subTitle:
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        )),
                  )),
              SizedBox(height: MySizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
