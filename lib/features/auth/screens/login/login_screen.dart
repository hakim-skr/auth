import 'package:auth_app/common/styles/spacing_style.dart';
import 'package:auth_app/common/widgets/login_signup/form_divider.dart';
import 'package:auth_app/common/widgets/login_signup/social_buttons.dart';
import 'package:auth_app/features/auth/screens/login/widgets/login_form.dart';
import 'package:auth_app/features/auth/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!FocusScope.of(context).hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: MySpacing.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoginHeader(),
                const LoginForm(),
                const FormDivider(text: "Or sing in with"),
                SocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
