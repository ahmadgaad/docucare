import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool obsecureText;
  final String? hint;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.keyboardType,
    this.hint,
    this.hintStyle,
    this.validator,
    this.obsecureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obsecureText,
      style: TextStyles.font14DarkBlueMedium,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hint: Text(hint ?? ''),
        hintStyle: hintStyle ?? TextStyles.font14LighterGreyRegular,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorUtils.offWhite),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorUtils.primary),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: ColorUtils.offWhite,
      ),
    );
  }
}
