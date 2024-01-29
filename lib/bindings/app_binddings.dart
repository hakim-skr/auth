import 'package:auth_app/services/network_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkController>(NetworkController());
  }
}
