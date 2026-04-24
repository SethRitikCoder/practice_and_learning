import 'package:flutter/material.dart';
import 'package:make_app/pages/loginpage.dart';
import 'package:make_app/ulities/text.dart';
import 'package:make_app/widget/drawer.dart';
import 'package:make_app/widget/drawer2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
              child: textdef("Go To Login Page", 22, color: Colors.cyan),
            ),
          ),
        ],
      ),
      drawer: MyDrawerer(),
    );
  }
}
