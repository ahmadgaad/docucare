import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginSocialDivider extends StatelessWidget {
  const LoginSocialDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(color: Colors.grey, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Or sign in with', style: TextStyles.font13GreyRegular),
        ),
        Expanded(child: Divider(color: Colors.grey, thickness: 1)),
      ],
    );
  }
}
