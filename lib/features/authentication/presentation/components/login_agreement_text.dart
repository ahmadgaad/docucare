import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginAgreementText extends StatelessWidget {
  const LoginAgreementText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13DarkBlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //
              },
          ),
          TextSpan(text: 'and ', style: TextStyles.font13GreyRegular),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //
              },
          ),
        ],
      ),
    );
  }
}
