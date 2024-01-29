import 'package:auth_app/features/auth/controllers/login_controller.dart';
import 'package:auth_app/routes/routes_names.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Form(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.email,
                validator: (value) => MyValidator.validateEmail(value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: "E-mail"),
              ),
              SizedBox(
                height: MySizes.spaceBtwInputFields,
              ),
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  obscureText: controller.hidePassword.value,
                  validator: (value) =>
                      MyValidator.validateEmptyText("password", value),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: controller.passwordsuffixIcon(),
                      labelText: "password"),
                ),
              ),
              SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.toggleRmemberme()),
                      ),
                      GestureDetector(
                          onTap: () => controller.toggleRmemberme(),
                          child: const Text("remamber me"))
                    ],
                  ),
                  TextButton(
                    child: const Text("forget password ? "),
                    onPressed: () =>
                        Get.toNamed(RoutesNames.forget_password_screen),
                  ),
                ],
              ),
              SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async => await controller.signin(),
                    // onPressed: () => Get.toNamed(RoutesNames.navigation_menu),
                    child: const Text("sign in ")),
              ),
              SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.toNamed(RoutesNames.signup_screen);
                    },
                    child: const Text("create Account ")),
              )
            ],
          ),
        ));
  }
}
