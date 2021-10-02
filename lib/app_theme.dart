import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData main = ThemeData(
    primaryColor: AppColors.accentColor,
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}

class AppColors {
  static const accentColor = Color(0xFF91A88C);
}
