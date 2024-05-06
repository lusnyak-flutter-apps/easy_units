import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';


ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: FontFamily.onest,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: bodySmall10TextStyle,
      selectedLabelStyle: bodySmall10TextStyle,
      unselectedItemColor: EUColors.navGreyColor,
      selectedItemColor: EUColors.blackColor,
      elevation: 0,
    ));

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: FontFamily.onest,
    );
