import 'package:flutter/material.dart';
import 'package:make_app/pages/add_to_cart.dart';
import 'package:make_app/pages/addapi.dart';
import 'package:make_app/pages/apifetchpage.dart';
import 'package:make_app/pages/catologpage.dart';
import 'package:make_app/pages/hero_animation.dart';
import 'package:make_app/pages/heroanimation1.dart';

import 'package:make_app/pages/homepage_jsonlocal.dart';
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

      initialRoute: "hero",
      routes: {
        "login": (context) => MyLoginPage(),
        "home": (context) => MyHomePage(),
        "valid": (context) => MyValidation(),
        "apifetch": (context) => MyApiFetch(),
        "addApi": (context) => MyAddApi(),
        "catalog": (context) => MyCatologPage(),
        "hero": (context) => MyHeroAnimation1(),
        "cart": (context) => MyAddCart(),
      },
    );
  }
}
