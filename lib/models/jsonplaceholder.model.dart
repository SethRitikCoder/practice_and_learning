class PostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromjson(Map<String, dynamic> json) {
    return PostModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
