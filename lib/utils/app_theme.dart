import 'package:blueberry/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      fontFamily: GoogleFonts.inconsolata().fontFamily,
      textTheme: GoogleFonts.inconsolataTextTheme(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
        primary: primaryColor,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: GoogleFonts.inconsolata().fontFamily,
      textTheme: GoogleFonts.inconsolataTextTheme(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
        primary: primaryColor,
      ),
    );
  }
}
