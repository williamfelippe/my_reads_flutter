import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/pages/detail_page.dart';
import 'package:my_books/widgets/shelf_chip_widget.dart';

class BookItem extends StatelessWidget {
  final Book _book;

  BookItem(this._book);

  void _moveToDetail(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailsPage(book: _book)));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: InkWell(
        onTap: () => _moveToDetail(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 16.0),
              child: ShelfChip(this._book.shelf),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              child: Image.network(this._book.imageLinks.thumbnail,
                  height: 210, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                this._book.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Ubuntu",
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
