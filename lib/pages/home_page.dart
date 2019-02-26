import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/pages/search_page.dart';
import 'package:my_books/services/books_service.dart';
import 'package:my_books/widgets/books_grid_widget.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _moveToSearchPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchPage()));
  }

  Widget _fetchBooks(BuildContext context, snapshot) {
    if (snapshot.hasData) {
      return BooksGrid(snapshot.data);
    } else if (snapshot.hasError) {
      return Text("${snapshot.error}");
    }

    return (
      Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.orange,
          strokeWidth: 3.0,
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Books").build(context),
      body: Container(
        color: Colors.white,
        child: FutureBuilder<List<Book>>(
          future: getAllBooks(),
          builder: (context, snapshot) => _fetchBooks(context, snapshot)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _moveToSearchPage(context),
        tooltip: 'Move to search page',
        child: Icon(Icons.search, color: Colors.white),
        backgroundColor: Colors.black,
      ),
    );
  }
}
