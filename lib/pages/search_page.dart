import 'package:flutter/material.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Search Books").build(context),
      body: Center(
        child: null,
      ),
    );
  }
}
