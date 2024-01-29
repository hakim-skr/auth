import 'package:auth_app/common/widgets/success_screen/success_screen.dart';
import 'package:auth_app/features/auth/screens/login/login_screen.dart';
import 'package:auth_app/features/auth/screens/onboarding/onboarding_screen.dart';
import 'package:auth_app/features/auth/screens/password_config/forget_password_screen.dart';
import 'package:auth_app/features/auth/screens/signup/singup_screen.dart';
import 'package:auth_app/features/auth/screens/signup/verify_email_screen.dart';
import 'package:auth_app/features/auth/screens/splash_screen.dart';
import 'package:auth_app/features/auth/screens/welcome_screen.dart';
import 'package:auth_app/navigation_menu.dart';
import 'package:auth_app/routes/routes_names.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RoutesNames.splash_screen, page: () => SplashScreen()),
        GetPage(
            name: RoutesNames.navigation_menu, page: () => NaviagtionMenu()),
        GetPage(
            name: RoutesNames.forget_password_screen,
            page: () => const ForgetPasswordScreen()),
        GetPage(
            name: RoutesNames.success_screen,
            page: () => SuccessScreen(
                  onPressed: () => print("success screen !"),
                  imgUrl: MyImages.svgEmail,
                  subTitle: "subTitle",
                  title: "title",
                )),
        GetPage(
            name: RoutesNames.verify_email_screen,
            page: () => const VerifyEmailScreen()),
        GetPage(
            name: RoutesNames.login_screen, page: () => const LoginScreen()),
        GetPage(
            name: RoutesNames.signup_screen, page: () => const SignupScreen()),
        GetPage(
            name: RoutesNames.onboarding_screen,
            page: () => const OnboardingScreen(),
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: RoutesNames.welcome_screen, page: () => const WelcomeScreen())
      ];
}
