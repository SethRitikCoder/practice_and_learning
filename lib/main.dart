import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_app/pages/homepage.dart';
import 'package:make_app/pages/loginpage.dart';
import 'package:make_app/pages/tryvalidatepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),

      initialRoute: "login",
      routes: {
        "login": (context) => MyLoginPage(),
        "home": (context) => MyHomePage(),
        "valid":(context) => MyValidation(),
      },
    );
  }
}
