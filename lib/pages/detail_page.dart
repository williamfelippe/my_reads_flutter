import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';

class DetailsPage extends StatefulWidget {
  final Book book;
  DetailsPage({Key key, this.book}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Book $widget.book.title").build(context),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(widget.book.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w700)),
              Image.network(
                widget.book.imageLinks.thumbnail,
                fit: BoxFit.cover,
              ),
              Text(widget.book.description,
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
              Text(
                widget.book.shelf,
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Ubuntu"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
