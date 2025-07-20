import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/core/extensions/navigation.dart';
import 'package:docdoc/core/helpers/regex.dart';
import 'package:docdoc/features/authentication/data/models/register_request_body.dart';
import 'package:docdoc/features/authentication/presentation/components/phone_number_field.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_controller.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_states.dart';
import 'package:docdoc/shared/widgets/custom_text_form_field.dart';
import 'package:docdoc/shared/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObsecureText = true;
  bool isPasswordConfirmationObsecure = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmationController;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharater = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = Regex.hasLowerCase(passwordController.text);
        hasUpperCase = Regex.hasUpperCase(passwordController.text);
        hasSpecialCharater = Regex.hasSpecialCharacter(passwordController.text);
        hasNumber = Regex.hasNumber(passwordController.text);
        hasMinLength = Regex.hasMinLength(passwordController.text);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthController, AuthStates>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () {
            return showDialog(
              context: context,
              builder: (_) {
                return const Center(
                  child: CircularProgressIndicator(color: ColorUtils.primary),
                );
              },
            );
          },
          registerSuccess: (response) {
            context.pop();
            context.pushNamedAndRemoveUntil(Routes.home, (route) => false);
          },
          registerError: (message) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                duration: const Duration(seconds: 2),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      child: Form(
        key: _key,
        child: Column(
          children: [
            CustomTextFormField(
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              hint: 'Name',
              hintStyle: TextStyles.font14GreyRegular,
            ),
            18.verticalSpace,
            CustomTextFormField(
              controller: emailController,
              hint: 'Email',
              hintStyle: TextStyles.font14GreyRegular,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !Regex.isEmailValid(value)) {
                  return 'Please enter valid email';
                }
                return null;
              },
            ),
            18.verticalSpace,
            PhoneNumberFormField(
              controller: phoneController,
              validator: (value) {
                if (value == null ||
                    value.number.isEmpty ||
                    !Regex.isPhoneNumberValid(value.number)) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
            18.verticalSpace,
            CustomTextFormField(
              controller: passwordController,
              hint: 'Password',
              hintStyle: TextStyles.font14GreyRegular,
              obsecureText: isObsecureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObsecureText = !isObsecureText;
                  });
                },
                icon: Icon(
                  isObsecureText
                      ? Icons.visibility_off
                      : Icons.visibility_rounded,
                  color: isObsecureText ? ColorUtils.grey : ColorUtils.primary,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter valid password';
                }
                return null;
              },
            ),
            18.verticalSpace,
            CustomTextFormField(
              controller: passwordConfirmationController,
              hint: 'Password Confirmation',
              hintStyle: TextStyles.font14GreyRegular,
              obsecureText: isPasswordConfirmationObsecure,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordConfirmationObsecure =
                        !isPasswordConfirmationObsecure;
                  });
                },
                icon: Icon(
                  isPasswordConfirmationObsecure
                      ? Icons.visibility_off
                      : Icons.visibility_rounded,
                  color: isPasswordConfirmationObsecure
                      ? ColorUtils.grey
                      : ColorUtils.primary,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter valid password';
                }
                return null;
              },
            ),
            18.verticalSpace,
            PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharater: hasSpecialCharater,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
            40.verticalSpace,
            ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  context.read<AuthController>().register(
                    RegisterRequestBody(
                      name: nameController.text,
                      email: emailController.text,
                      phone: phoneController.text,
                      password: passwordController.text,
                      passwordConfirmation: passwordConfirmationController.text,
                      gender: 0,
                    ),
                  );
                }
              },
              child: Text('Register', style: TextStyles.font16WhiteSemiBold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }
}
