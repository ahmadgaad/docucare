import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/shared/utils/images.dart';
import 'package:docdoc/shared/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Svgs.onboardingDocdocLogoLowOpacity),
        Container(
          // Using BoxDecoration to create a gradient effect
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
              stops: [0.14, 0.45],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset(Images.doctor),
        ),
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 30,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.5),
          ),
        ),
      ],
    );
  }
}
