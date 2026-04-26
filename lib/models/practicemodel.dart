class AuthorDetails{
  final String authorName;
  final String country;


  AuthorDetails({required this.authorName,required this.country});


  factory
  AuthorDetails.fromjson(Map<String,dynamic> json){
    return AuthorDetails(authorName: json['author_name'], country: json['country']);
  }
}


class BookModel{
final String bookTitle;
final int publishYear;
final AuthorDetails authorDetails;

BookModel({required this.bookTitle,required this.publishYear,required this.authorDetails});

factory

BookModel.fromjson(Map<String,dynamic> json){
  return BookModel(bookTitle: json['book_title'], publishYear: json['publish_year'], authorDetails: AuthorDetails.fromjson(json['author_details']));
}



}