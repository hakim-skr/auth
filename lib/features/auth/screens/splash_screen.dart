import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/constants/text_strings.dart';
import 'package:auth_app/features/auth/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    controller.sartAnimation();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Obx(() => AnimatedPositioned(
              top: -10,
              right: controller.animate.value ? 0 : -125,
              duration: const Duration(milliseconds: 1000),
              child: const Image(
                  width: 130, image: AssetImage(MyImages.icon)))),
          Obx(() => AnimatedPositioned(
              left: controller.animate.value ? MySizes.defaultSize : -100,
              duration: const Duration(milliseconds: 1600),
              top: 40,
              child: AnimatedOpacity(
                opacity: controller.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyTexts.appName,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      MyTexts.tageLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                ),
              ))),
          Obx(() => AnimatedPositioned(
              bottom: controller.animate.value ? 40 : -290,
              width: Get.width * 1.2,
              right: 0,
              duration: const Duration(milliseconds: 1500),
              child: AnimatedOpacity(
                  opacity: controller.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1000),
                  child:
                      const Image(image: AssetImage(MyImages.splashImage))))),
        ],
      )),
    );
  }
}
