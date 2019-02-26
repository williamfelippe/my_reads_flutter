import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key key, @required this.onChange}) : super(key: key);

  final Function onChange;

  void _handleOnChangeQuery(query) {
    onChange(query);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        onChanged: (query) => _handleOnChangeQuery(query),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            hintText: "Procure por um livro...",
            prefixIcon: Icon(Icons.search, color: Colors.black)),
      ),
    );
  }
}
