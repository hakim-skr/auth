import 'package:get/get.dart';

class SplashController extends GetxController {
  RxBool animate = false.obs;
  Future sartAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.delete<SplashController>();
  }
}
