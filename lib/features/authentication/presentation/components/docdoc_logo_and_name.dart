import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/shared/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocDocLogoAndName extends StatelessWidget {
  const DocDocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(Svgs.logo),
        8.horizontalSpace,
        Text('Docdoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
