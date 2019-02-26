import 'package:flutter/material.dart';
import 'package:my_books/utilities/shelfs.dart';

class ShelfChip extends StatelessWidget {
  final String _shelf;

  ShelfChip(this._shelf);

  @override
  Widget build(BuildContext context) {
    return (
      Chip(
        backgroundColor: Colors.black,
        label: Text(getShelfName(this._shelf)),
        labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "Ubuntu"),
      )
    );
  }
}
