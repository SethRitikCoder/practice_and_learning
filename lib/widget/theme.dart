import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lighttheme { 
    return ThemeData(
      
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      cardColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white
      ),
      
      canvasColor: Colors.grey[100],
      primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarThemeData(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 27),
        titleSpacing: 2.0,
        titleTextStyle: TextStyle(
          color: Colors.white,
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
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 2.0,
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
