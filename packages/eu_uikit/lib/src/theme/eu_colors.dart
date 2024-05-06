import 'package:flutter/material.dart';

class EUColors {
  EUColors._();

  static const List<Color> all = [
  whiteColor ,
  blackColor,
  accentRedColor,
  accentGreenColor,
  accentBlueColor,
  accentVioletColor,
  accentYellowColor ,
  baceLightColor,
  baceDarkColor ,
  baceGreyColor ,
  baceDarkGreyColor41,
  baceDarkGreyColor20,
  baceCustomGreyColor,
  ];
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF000000);

  static const accentRedColor = Color(0xFFFF5F57);
  static const accentGreenColor = Color(0xFFD6FF79);
  static const accentBlueColor = Color(0xFFA0F8F6);
  static const accentVioletColor = Color(0xFFDABDFF);
  static const accentYellowColor = Color(0xFFFFF95D);

  static const baceLightColor = Color(0xFFFFFFFF);
  static const baceDarkColor = Color(0xFF272727);
  static const baceGreyColor = Color(0xFFF2F1F1);
  static const baceDarkGreyColor41 = Color(0xFF414040);
  static const baceDarkGreyColor20 = Color(0xFF202020);
  static const baceCustomGreyColor = Color(0xFF535554);
  static const navGreyColor = Color(0xFF999999);

  static const navBarSvgSelectedColor = ColorFilter.mode(blackColor, BlendMode.srcIn);
  static const navBarSvgUnSelectedColor = ColorFilter.mode(navGreyColor, BlendMode.srcIn);


}