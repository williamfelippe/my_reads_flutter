import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/services/search_service.dart';
import 'package:my_books/widgets/books_grid_widget.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';
import 'package:my_books/widgets/search_bar_widget.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Book> _searchedBooks = [];
  bool _error = false;

  void _updateQuery(String query) async {
    try {
      if (query.length > 3) {
        var response = await searchBooks(query: query);
        changeValue(response, false);
      } 
      else {
        changeValue([], false);
      }
    } catch (error) {
      changeValue([], true);
    }
  }

  void changeValue(books, error) {
    setState(() {
        _searchedBooks = books;
        _error = error;
      });
  }

  Widget buildGrid() {
    if(_error) {
      return Center(
        child: Text("Ops... Nenhum livro para essa busca"),
      );
    }

    return BooksGrid(_searchedBooks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Search Books").build(context),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SearchBar(onChange: _updateQuery),
            Expanded(
              child: buildGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
