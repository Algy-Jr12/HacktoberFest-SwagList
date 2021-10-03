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
  static const dullRed = Color(0xFFb53a26);

  // Tag colors
  static const lightRose = Color(0xFFffc7bd);
  static const berylGreen = Color(0xFFe8e0c3);
  static const clayAsh = Color(0xFFb4d0ae);
  static const gainsboro = Color(0xFFE4D8DC);
  static const lightSalmon = Color(0xFFffa99a);
  static const mercury = Color(0xFFe5e5e5);
  static const parchment = Color(0xFFFCFFA6);
  static const mistyRose = Color(0xFFffe5d9);
}
