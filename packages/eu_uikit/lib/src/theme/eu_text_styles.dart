import 'package:eu_uikit/src/theme/eu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/fonts.gen.dart';

const kPackageName = 'eu_uikit';

List<TextStyle> get textStyles => [
  headerH1TextStyle,
  headerH2TextStyle,
  heading20TextStyle,
  headingTextStyle,
  bodyBold15TextStyle,
  bodyRegular15TextStyle,
  bodySmall10TextStyle,
  boldSmall10TextStyle
];

TextStyle get headerH1TextStyle => TextStyle(
      fontSize: 34.sp,
      height: 38 / 34,
      fontFamily: FontFamily.onest,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get headerH2TextStyle => TextStyle(
      fontSize: 24.sp,
      height: 30 / 24,
      fontFamily: FontFamily.onest,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get headingTextStyle => TextStyle(
      fontSize: 15.sp,
      height: 17 / 15,
      fontFamily: FontFamily.onest,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get heading20TextStyle => TextStyle(
      fontSize: 20.sp,
      height: 26 / 20,
      fontFamily: FontFamily.onest,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get bodyBold15TextStyle => TextStyle(
      fontSize: 15.sp,
      height: 25 / 15,
      fontFamily: FontFamily.mulish,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get bodyRegular15TextStyle => TextStyle(
      fontSize: 15.sp,
      height: 25 / 15,
      fontFamily: FontFamily.mulish,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: EUColors.blackColor,
      package: kPackageName,
    );

TextStyle get bodySmall10TextStyle => TextStyle(
  fontSize: 10.sp,
  height: 13 / 10,
  fontFamily: FontFamily.mulish,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  color: EUColors.baceCustomGreyColor,
  package: kPackageName,
);

TextStyle get boldSmall10TextStyle => TextStyle(
      fontSize: 10.sp,
      height: 13 / 10,
      fontFamily: FontFamily.mulish,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: EUColors.whiteColor,
      package: kPackageName,
    );
