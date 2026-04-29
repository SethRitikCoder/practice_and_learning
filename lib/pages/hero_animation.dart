import 'package:flutter/material.dart';
import 'package:make_app/pages/heroanimation2.dart';
import 'package:make_app/pages/homepage_jsonlocal.dart';

class MyHeroAnimation1 extends StatefulWidget {
  const MyHeroAnimation1({super.key});

  @override
  State<MyHeroAnimation1> createState() => _MyHeroAnimation1State();
}

class _MyHeroAnimation1State extends State<MyHeroAnimation1> {
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
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHeroAnimation2()),
              );
            },

            leading: Hero(
              tag: "her",
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("lib/images/Ritik_Seth.jpeg"),
              ),
            ),
            title: Text(
              "Ritik Kumar Seth",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "this is a very powerfull person of the village and this is very ",
            ),
          ),
        ],
      ),
    );
  }
}
