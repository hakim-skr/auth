import 'package:auth_app/features/test/controllers/testOneController.dart';
import 'package:get/get.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestOneController(), fenix: true);
    // TODO: implement dependencies
  }
}
