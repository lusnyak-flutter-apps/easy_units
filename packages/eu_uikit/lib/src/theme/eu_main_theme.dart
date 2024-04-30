import 'package:flutter/material.dart';

import '../assets/fonts.gen.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: FontFamily.onest,
    );

ThemeData get darkTheme => ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: FontFamily.onest,
);
