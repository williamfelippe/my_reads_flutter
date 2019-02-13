import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';

class BookItem extends StatelessWidget {
  final Book _book;

  BookItem(this._book);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
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
