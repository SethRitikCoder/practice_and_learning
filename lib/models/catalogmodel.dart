class Catalogmodel {
  static final products = [
    Product(
      id: 1,
      name: "Iphone 12 Pro",
      desc: "Apple Iphone 12th Generation ",
      price: 999,
      color: "#33505a",
      image:
          "https://web-mobile-first.s3.eu-west-3.amazonaws.com/production/mockup_apple_iphone_12_pro_3092e12ebe.png",
    ),
  ];
}

class Product {
  final num? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Product({this.id, this.name, this.desc, this.price, this.color, this.image});
}
