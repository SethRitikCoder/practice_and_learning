import 'package:flutter/material.dart';

class MyAddCart extends StatefulWidget {
  const MyAddCart({super.key});

  @override
  State<MyAddCart> createState() => _MyAddCartState();
}

class _MyAddCartState extends State<MyAddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Add To Cart ',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Text(
        "Bheem Soni",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
