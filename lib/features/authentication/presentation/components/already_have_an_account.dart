import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/core/extensions/navigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool isLogin;
  const AlreadyHaveAnAccount({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: isLogin
                ? "Don't have an account yet? "
                : "Already have an account yet? ",
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: isLogin ? "Register" : "Login",
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (isLogin) {
                  context.pushReplacementNamed(Routes.register);
                } else {
                  context.pushReplacementNamed(Routes.login);
                }
              },
          ),
        ],
      ),
    );
  }
}
