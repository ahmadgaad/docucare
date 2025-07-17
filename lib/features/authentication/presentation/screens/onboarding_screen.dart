import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/core/extensions/navigation.dart';
import 'package:docdoc/features/authentication/presentation/components/docdoc_logo_and_name.dart';
import 'package:docdoc/features/authentication/presentation/components/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              31.verticalSpace,
              DocDocLogoAndName(),
              50.verticalSpace,
              DoctorImageAndText(),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 23.w,
                  end: 23.w,
                  top: 20.h,
                  bottom: 20.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GreyRegular,
                    ),
                    25.verticalSpace,
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed(Routes.login);
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
