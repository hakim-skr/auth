import 'package:get/get.dart';

class TestOneController extends GetxController {
  RxInt counter = 0.obs;
  String? title;
  @override
  void onInit() {
    title = Get.arguments?["title"];
    super.onInit();
  }

  increment() {
    counter++;
    update();
  }

  decrement() {
    counter--;
    update();
  }
}
