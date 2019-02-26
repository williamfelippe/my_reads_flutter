import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/widgets/book_item_widget.dart';

class BooksGrid extends StatelessWidget {
  final List<Book> _books;

  BooksGrid(this._books);

  Widget _buildRow(Book book) {
    return BookItem(book);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.5,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      children: _books.map((Book book) {
        return _buildRow(book);
      }).toList(),
    );
  }
}
