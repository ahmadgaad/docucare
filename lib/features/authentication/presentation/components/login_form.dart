import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/core/helpers/regex.dart';
import 'package:docdoc/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
       _emailController = emailController,
       _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          CustomTextFromField(
            controller: widget._emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !Regex.isEmailValid(value)) {
                return 'Please enter valid email';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            hint: 'Email',
            hintStyle: TextStyles.font14GreyRegular,
          ),
          16.verticalSpace,
          CustomTextFromField(
            obscureText: isVisible,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: isVisible
                  ? Icon(Icons.visibility_off_outlined)
                  : Icon(Icons.visibility_outlined),
            ),
            controller: widget._passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !Regex.isPasswordValid(value)) {
                return 'Please enter valid email';
              }
              return null;
            },
            keyboardType: TextInputType.visiblePassword,
            hint: 'Password',
            hintStyle: TextStyles.font14GreyRegular,
          ),
        ],
      ),
    );
  }
}
