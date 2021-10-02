import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData main = ThemeData(
    primaryColor: AppColors.darkGreen,
    fontFamily: GoogleFonts.rubik().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.darkGreen,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );
}

class AppColors {
  static const darkGreen = Color(0xFF667662);
  static const brightRed = Color(0xFFF74710);
}
