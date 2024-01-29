import 'package:auth_app/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  RxBool done = false.obs;

  updatePageIndecator(index) {
    currentPageIndex.value = index;
    currentPageIndex.value == 2 ? done.value = true : done.value = false;
  }

  dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      currentPageIndex.value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    // currentPageIndex.value == 2 ? done.value = true : done.value = false;
  }

  nextPage() async {
    currentPageIndex.value != 2
        ? currentPageIndex.value++
        : {
            Get.offAllNamed(RoutesNames.login_screen),
            await GetStorage().write("firstTime", false),
            Get.delete<OnboardingController>()
          };
    pageController.animateToPage(
      currentPageIndex.value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    currentPageIndex.value == 2 ? done.value = true : done.value = false;
  }

  skipPages() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
