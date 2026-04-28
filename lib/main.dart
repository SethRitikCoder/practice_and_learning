import 'package:flutter/material.dart';
import 'package:make_app/pages/addapi.dart';
import 'package:make_app/pages/apifetchpage.dart';
import 'package:make_app/pages/catologpage.dart';

import 'package:make_app/pages/homepage.dart';
import 'package:make_app/pages/loginpage.dart';
import 'package:make_app/pages/tryvalidatepage.dart';
import 'package:make_app/widget/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: Mytheme.darktheme(),

      debugShowCheckedModeBanner: false,
      theme: Mytheme.lighttheme,

      initialRoute: "catalog",
      routes: {
        "login": (context) => MyLoginPage(),
        "home": (context) => MyHomePage(),
        "valid": (context) => MyValidation(),
        "apifetch": (context) => MyApiFetch(),
        "addApi": (context) => MyAddApi(),
        "catalog": (context) => MyCatologPage(),
      },
    );
  }
}
