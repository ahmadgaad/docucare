import 'package:docdoc/shared/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSocialButtons extends StatelessWidget {
  const LoginSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(child: SvgPicture.asset(Svgs.googleLogo), onTap: () {}),
        GestureDetector(
          child: SvgPicture.asset(Svgs.facebookLogo),
          onTap: () {},
        ),
      ],
    );
  }
}
