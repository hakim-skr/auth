import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/features/auth/controllers/onboarding_controller.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/device/device_utility.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final conroller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: conroller.pageController,
          onPageChanged: (value) => conroller.updatePageIndecator(value),
          children: const [
            OnboardingPage(
                imagePath: MyImages.svgEmail,
                title: "title",
                subTitle:
                    "welcome to asdf sdf cvasd asdgs dad gsdg asdfasd fasd g asdg asdgds g kl kl lk jsd"),
            OnboardingPage(
                imagePath: MyImages.svgEmail,
                title: "title2",
                subTitle:
                    "welcome to asdf sdf cvasd asdgs dad gsdg asdfasd fasd g asdg asdgds g kl kl lk jsd"),
            OnboardingPage(
                imagePath: MyImages.svgEmail,
                title: "title3",
                subTitle:
                    "welcome to asdf sdf cvasd asdgs dad gsdg asdfasd fasd g asdg asdgds g kl kl lk jsd"),
          ],
        ),
        const SkipButton(),
        const DotNavigation(),
        const NextButton()
      ]),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();
    return Positioned(
        bottom: 25.h,
        right: 10.w,
        child: Obx(
          () => controller.done.value
              ? MaterialButton(
                  height: MySizes.buttonHeight,
                  padding: const EdgeInsets.all(0),
                  // minWidth: 40,
                  onPressed: () {
                    controller.nextPage();
                    print(Theme.of(context).brightness);
                  },
                  shape: StadiumBorder(
                      side: BorderSide(color: MyColors.primary, width: 2.w)),
                  color: MyHelper.isDarkMode(context)
                      ? MyColors.dark
                      : MyColors.light,
                  child: Text(
                    "Done",
                    style: TextStyle(
                        color: MyColors.primary, fontSize: MySizes.fontSizeSm),
                  ),
                )
              : MaterialButton(
                  height: MySizes.buttonHeight,
                  onPressed: () {
                    controller.nextPage();
                  },
                  shape: const CircleBorder(),
                  color: MyColors.primary,
                  child: const Icon(Iconsax.arrow_right_3,
                      color: MyColors.secondery),
                ),
        ));
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();

    return Positioned(
        top: DeviceUtils.getAppBarHeight(),
        right: MySizes.defaultSpace,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(color: MyColors.primary),
              ),
            ),
          ),
          onPressed: () => controller.skipPages(),
          child: Text(
            "Skip",
            style: TextStyle(
                color: MyColors.primary, fontSize: MySizes.fontSizeSm),
          ),
        ));
  }
}

class DotNavigation extends StatelessWidget {
  const DotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();

    return Positioned(
        bottom: 25.h,
        left: 25.w,
        child: Container(
          alignment: Alignment.center,
          height: MySizes.buttonHeight,
          child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: (value) => controller.dotNavigationClick(value),
            count: 3,
            effect: const ExpandingDotsEffect(
                dotHeight: 6, activeDotColor: MyColors.primary),
          ),
        ));
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath, title, subTitle;

  const OnboardingPage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.r, right: 20.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image(
          //   image: AssetImage(imagePath),
          //   width: 0.8.sw,
          //   height: 0.4.sh,
          // ),
          SvgPicture.asset(
            imagePath,
            width: 0.8.sw,
            height: 0.4.sh,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
