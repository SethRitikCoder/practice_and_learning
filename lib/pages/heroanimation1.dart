import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_app/pages/add_to_cart.dart';
import 'package:make_app/pages/hero_animation.dart';

class MyHeroAnimation1 extends StatefulWidget {
  const MyHeroAnimation1({super.key});

  @override
  State<MyHeroAnimation1> createState() => _MyHeroAnimation1State();
}

class _MyHeroAnimation1State extends State<MyHeroAnimation1> {
  List<String> image = [
    "assets/images/Iphone15.jpg",
    "assets/images/Iphone17.jpg",
    "assets/images/IQOO_15R.webp",
    "assets/images/oppo_p5.jpg",
    "assets/images/SamsungS25Ultra.jpg",
    "assets/images/Vivo_T5_pro.jpg",
    "assets/images/VivoY04.jpg",
    "assets/images/VivoY100.jpg",
  ];
  List<String> name = [
    "Iphone 15",
    "Iphone 17",
    "IQOO 15R",
    "Oppo P5 ",
    "Samsung S25 Ultra",
    "Vivo T5 Pro",
    "Vivo Yo4",
    "Vivo Y100",
  ];
  List<String> subtitle = [
    "A16 chip, Super Retina display",
    "Latest iOS with dynamic island",
    "Gaming beast with high refresh rate",
    "AI camera with night mode",
    "200MP camera, ultra performance",
    "Fast charging with smooth UI",
    "Budget friendly with solid battery",
    "Slim design with AMOLED display",
  ];
  List<String> price = [
    "₹79,900",
    "₹89,900",
    "₹39,999",
    "₹29,999",
    "₹1,29,999",
    "₹24,999",
    "₹12,999",
    "₹18,999",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: SafeArea(
          top: true,
          child: Column(
            children: [
              const Text(
                '   Catalog App',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                ' Trending Products',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            Divider(thickness: 2.0, color: Colors.grey[300]),
        itemCount: image.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: image[index],
              child:  Image.asset(image[index])
            ),
            title: Text(
              name[index],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle[index],
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        minimumSize: Size(40, 30),
                        backgroundColor: Colors.grey[800],
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddCart(title: name[index],)));
                      },
                      child: Text("Buy"),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHeroAnimation2(
                    imageUrl: image[index],
                    name: name[index],
                    price: price[index],
                    subtitle: subtitle[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
