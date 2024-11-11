import 'dart:convert';

class Books {
  final List<Book>? books;

  Books({
    this.books,
  });

  factory Books.fromRawJson(String str) => Books.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Books.fromJson(Map<String, dynamic> json) => Books(
    books: json["books"] == null ? [] : List<Book>.from(json["books"]!.map((x) => Book.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "books": books == null ? [] : List<dynamic>.from(books!.map((x) => x.toJson())),
  };
}

class Book {
  final String? title;
  final String? author;
  final String? rating;

  Book({
    this.title,
    this.author,
    this.rating,
  });

  factory Book.fromRawJson(String str) => Book.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    title: json["title"],
    author: json["author"],
    rating: json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "author": author,
    "rating": rating,
  };
}
