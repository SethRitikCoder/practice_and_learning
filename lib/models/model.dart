import 'package:make_app/models/catalogmodel.dart';

class ProductModel {
  final String? name;
  final String? desc;
  final String? price;
  final String? color;
  final String? image;

  ProductModel({this.name, this.desc, this.price, this.color, this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      desc: json['desc'],
      price: json['price'],
      color: json['color'],
      image: json['image'],
    );
  }
}

class CatalogModel {
  final List<ProductModel> products;

  CatalogModel({required this.products});

  factory CatalogModel.fromJson(Map<String, dynamic> json) {
    var list = json['products'] as List;
    List<ProductModel> productList = list
        .map((e) => ProductModel.fromJson(e))
        .toList();

    return CatalogModel(products: productList);
  }
}
