import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NaviagtionMenu extends StatelessWidget {
  NaviagtionMenu({super.key});
  final NaviagtionMenuController controller =
      Get.put(NaviagtionMenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            selectedIndex: controller.currentIndex.value,
            onDestinationSelected: (value) =>
                controller.currentIndex.value = value,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "home"),
              NavigationDestination(icon: Icon(Iconsax.heart), label: "home"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "home"),
              NavigationDestination(
                  icon: Icon(Iconsax.search_normal), label: "home"),
              NavigationDestination(icon: Icon(Iconsax.setting), label: "home"),
            ]),
      ),
      body: Obx(() =>
          SafeArea(child: controller.screens[controller.currentIndex.value])),
    );
  }
}

class NaviagtionMenuController extends GetxController {
  final RxInt currentIndex = 0.obs;

  final screens = [
    Container(
      color: Colors.red,
      child: Center(
        child: ElevatedButton(
            onPressed: () => AuthenticationRepository.inctence.logOut(),
            child: const Text("log out")),
      ),
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.black,
    ),
  ];
}
