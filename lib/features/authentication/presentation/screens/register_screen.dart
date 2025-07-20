import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/authentication/presentation/components/already_have_an_account.dart';
import 'package:docdoc/features/authentication/presentation/components/login_agreement_text.dart';
import 'package:docdoc/features/authentication/presentation/components/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 34.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.font24BlueBold),
                10.verticalSpace,
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.font14GreyRegular,
                ),
                40.verticalSpace,
                Column(
                  children: [
                    const SignUpForm(),
                    16.verticalSpace,
                    LoginAgreementText(isLogin: false),
                    50.verticalSpace,
                    AlreadyHaveAnAccount(isLogin: false),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
