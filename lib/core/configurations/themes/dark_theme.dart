import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorUtils.primary,
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   primary: const Color(0xFF247CFF),
    // secondary: const Color(0xFF247CFF),
    // ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorUtils.primary,
      foregroundColor: Colors.white,
    ),
  );
}
