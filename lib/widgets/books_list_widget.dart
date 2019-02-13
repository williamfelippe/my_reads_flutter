import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/widgets/book_item_widget.dart';

class BooksList extends StatelessWidget {

  final List<Book> _books;

  BooksList(this._books);

  Widget _buildRow(Book book) {
    return BookItem(book);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: this._books.length,
        itemBuilder:(context, i) {
          return _buildRow(this._books[i]);
        });
  }
}