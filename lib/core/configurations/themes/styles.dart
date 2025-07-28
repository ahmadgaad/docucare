import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle font20DarkBlueBold = GoogleFonts.inter(
    fontSize: 20.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16DarkBlueBold = GoogleFonts.inter(
    fontSize: 16.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );


  static TextStyle font20DarkBlueSemiBold = GoogleFonts.inter(
    fontSize: 20.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font20WhiteMedium = GoogleFonts.inter(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font24BlackBold = GoogleFonts.inter(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14DarkBlueMedium = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14DarkBlueRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );


  static TextStyle font14DarkBlueSemiBold = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorUtils.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14GreyRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14LighterGreyRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorUtils.lighterGrey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font15DarkBlueMedium = GoogleFonts.inter(
    fontSize: 15.sp,
    color: ColorUtils.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14BlueSemiBold = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14BlueRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font12BlueRegular = GoogleFonts.inter(
    fontSize: 12.sp,
    color: ColorUtils.primary,
    fontWeight: FontWeightHelper.regular,
  );
  
  static TextStyle font12GreyMedium = GoogleFonts.inter(
    fontSize: 12.sp,
    color: ColorUtils.grey,
    fontWeight: FontWeightHelper.medium,
  );
}
