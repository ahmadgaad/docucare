import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:flutter/material.dart';

class SpecialitySeeAll extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const SpecialitySeeAll({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.font20DarkBlueSemiBold),
        TextButton(
          onPressed: onPressed,
          child: Text("See All", style: TextStyles.font14BlueRegular),
        ),
      ],
    );
  }
}
