import 'package:auth_app/bindings/app_binddings.dart';
import 'package:auth_app/features/auth/screens/splash_screen_normal.dart';
import 'package:auth_app/routes/routes.dart';
import 'package:auth_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 830),
      builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: true,
          title: 'Flutter Demo',
          theme: MyTheme.lightMode,
          darkTheme: MyTheme.darkMode,
          initialBinding: AppBindings(),
          themeMode: ThemeMode.dark,
          home: const SplashNormal(),
          getPages: AppRoutes.appRoutes()),
    );
  }
}
