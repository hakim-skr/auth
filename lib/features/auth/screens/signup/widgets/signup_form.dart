import 'package:auth_app/features/auth/controllers/signup_controller.dart';
import 'package:auth_app/features/auth/screens/signup/widgets/terms_and_conditions.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SiginupForm extends StatelessWidget {
  const SiginupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.put(SignupController());
    return Form(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        controller: controller.firstName,
                        validator: (value) =>
                            MyValidator.validateEmptyText("first name", value),
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: "First Name ")),
                  ),
                  SizedBox(width: MySizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                        controller: controller.lastName,
                        validator: (value) =>
                            MyValidator.validateEmptyText("last name", value),
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: "Last Name ")),
                  )
                ],
              ),
              SizedBox(height: MySizes.spaceBtwInputFields),
              TextFormField(
                  controller: controller.username,
                  validator: (value) =>
                      MyValidator.validateEmptyText("username", value),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user_edit),
                      labelText: "Username ")),
              SizedBox(height: MySizes.spaceBtwInputFields),
              TextFormField(
                  validator: (value) => MyValidator.validateEmail(value),
                  controller: controller.email,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct),
                    labelText: "E-mail ",
                  )),
              SizedBox(height: MySizes.spaceBtwInputFields),
              TextFormField(
                  controller: controller.phoneNumber,
                  validator: (value) => MyValidator.validatePhoneNumber(value),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.call),
                      labelText: "Phone Number ")),
              SizedBox(height: MySizes.spaceBtwInputFields),
              Obx(
                () => TextFormField(
                    obscureText: controller.hidePassword.value,
                    validator: (value) => MyValidator.validatePassword(value),
                    controller: controller.password,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: controller.passwordsuffixIcon(),
                        labelText: "Password ")),
              ),
              SizedBox(height: MySizes.spaceBtwInputFields),
              Obx(
                () => TextFormField(
                    obscureText: controller.hideConfirmPassword.value,
                    validator: (value) => controller.password.value.text ==
                            controller.confirmPassword.value.text
                        ? null
                        : "password don't match",
                    controller: controller.confirmPassword,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: controller.confirmPasswordsufffixIcon(),
                        labelText: "Confirm Password ")),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              const termsAndConditionsCheckbox(),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async => await controller.signup(),
                    child: const Text("sign up")),
              ),
            ],
          ),
        ));
  }
}
