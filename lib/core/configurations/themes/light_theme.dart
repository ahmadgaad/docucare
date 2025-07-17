import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF247CFF),
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   primary: const Color(0xFF247CFF),
    // secondary: const Color(0xFF247CFF),
    // ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF247CFF),
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorUtils.primary,
        minimumSize: const Size(double.infinity, 55),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorUtils.primary,
        // overlayColor: Colors.transparent,
      ),
    ),
  );
}
