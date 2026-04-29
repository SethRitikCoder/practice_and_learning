import 'package:flutter/material.dart';

class MyHeroAnimation2 extends StatefulWidget {
  const MyHeroAnimation2({super.key});

  @override
  State<MyHeroAnimation2> createState() => _MyHeroAnimation1State();
}

class _MyHeroAnimation1State extends State<MyHeroAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Hero Animation',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Hero(
        tag: "her",
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("lib/images/Ritik_Seth.jpeg"),
        ),
      ),
    );
  }
}
