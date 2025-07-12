import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/authentication/presentation/components/already_have_an_account.dart';
import 'package:docdoc/features/authentication/presentation/components/login_agreement_text.dart';
import 'package:docdoc/features/authentication/presentation/components/login_form.dart';
import 'package:docdoc/features/authentication/presentation/components/login_social_buttons.dart';
import 'package:docdoc/features/authentication/presentation/components/login_social_divider.dart';
import 'package:docdoc/features/authentication/presentation/components/welcome_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 70.h,
              bottom: 24.h,
              start: 31.w,
              end: 30.w,
            ),
            child: Column(
              children: [
                WelcomeTexts(),
                36.verticalSpace,
                LoginForm(
                  formKey: _formKey,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                16.verticalSpace,
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                ),
                32.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Login', style: TextStyles.font16WhiteSemiBold),
                ),
                46.verticalSpace,
                LoginSocialDivider(),
                32.verticalSpace,
                LoginSocialButtons(),
                32.verticalSpace,
                LoginAgreementText(),
                24.verticalSpace,
                AlreadyHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
