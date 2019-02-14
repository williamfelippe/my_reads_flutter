import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key key, this.query: "", @required this.onChange}) : super(key: key);

  final String query;
  final ValueChanged<String> onChange;

  void _handleOnChangeQuery(query) {
    print('Query: $query');
    onChange(query);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        onChanged: (query) => _handleOnChangeQuery(query),
        decoration: InputDecoration(
            hintText: "Procure por um livro...", icon: Icon(Icons.search)),
      ),
    );
  }
}
