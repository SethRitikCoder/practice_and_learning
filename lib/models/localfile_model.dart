class LocalfileModel {
  final num? id;
  final String? name;
  final num? price;
  final String? description;

  LocalfileModel({this.id, this.name, this.price, this.description});

  factory LocalfileModel.fromJson(Map<String, dynamic> json) {
    return LocalfileModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
    );
  }
}
