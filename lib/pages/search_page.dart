import 'package:flutter/material.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';
import 'package:my_books/widgets/search_bar_widget.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  String _query = "";

  void _updateQuery(String newQuery) {
    setState(() {
     _query = newQuery;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Search Books").build(context),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[SearchBar(query: _query, onChange: _updateQuery), Container(child: null)],
        ),
      ),
    );
  }
}
