import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class MyHeroAnimation2 extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  final String price;

  const MyHeroAnimation2({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    required this.price,
  });

  @override
  State<MyHeroAnimation2> createState() => _MyHeroAnimation2State();
}

class _MyHeroAnimation2State extends State<MyHeroAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Hero Animation 2',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),

      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 2),
              Hero(
                tag: widget.imageUrl,
                child: Container(
                  height: 310,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      widget.name,
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        loremIpsum(words: 20, paragraphs: 1),
                        style: TextStyle(fontSize: 20, color: Colors.black),textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "cart");
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
