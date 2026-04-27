class Catalogmodel {
  final items = [
  (
    id: "Codepur001",
    name: "Iphone 12 Pro",
    desc: "Apple Iphone 12th Generation ",
    price: 999,
    color: "#335058",
    image: "https://youtube.com",
  ),
];
}



class Items {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}


