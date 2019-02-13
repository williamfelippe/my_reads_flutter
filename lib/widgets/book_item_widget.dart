import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';

class BookItem extends StatelessWidget {
  final Book _book;

  BookItem(this._book);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding:
            EdgeInsets.only(top: 10.0, right: 25.0, bottom: 10.0, left: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: Image.network(this._book.imageLinks.thumbnail.isEmpty ? this._book.imageLinks.thumbnail : '',
                fit: BoxFit.cover),
            ),
            Text(
              this._book.title,
              style: TextStyle(
                  color: Colors.black, fontFamily: "Ubuntu", fontSize: 20),
            ),
            Text(
              this._book.shelf,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
