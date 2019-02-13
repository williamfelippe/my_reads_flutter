import 'dart:convert';

class Shelf {
  Map<String, List<String>> books;

  Shelf({this.books});

  factory Shelf.fromJson(Map<String, dynamic> json) => new Shelf(
        books: json["books"],
      );

  Map<String, dynamic> toJson() => {
        "books": books,
      };
}

List<Shelf> allBooksOfShelfFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Shelf>.from(jsonData.map((x) => Shelf.fromJson(x)));
}
