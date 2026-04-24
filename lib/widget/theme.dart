import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lighttheme {
    return ThemeData(
      useMaterial3: true,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarThemeData(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 27),
        titleSpacing: 2.0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData darktheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigoAccent,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      appBarTheme: AppBarThemeData(
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white, size: 27),
        titleSpacing: 2.0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
