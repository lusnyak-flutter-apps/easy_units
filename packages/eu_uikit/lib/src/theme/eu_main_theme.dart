import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: EUColors.blackColor,
      selectionColor: Colors.transparent,
      cursorColor: EUColors.blackColor,
    ),
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: FontFamily.onest,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: EUColors.textFieldGreyColor,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 14.w,
      ),
    ),
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
      textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: EUColors.whiteColor,
        selectionColor: Colors.transparent,
        cursorColor: EUColors.whiteColor,
      ),
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: FontFamily.onest,
    );
