import 'package:flutter/material.dart';
import 'package:my_books/models/book.dart';
import 'package:my_books/widgets/custom_appbar_widget.dart';
import 'package:my_books/widgets/shelf_chip_widget.dart';

class DetailsPage extends StatefulWidget {
  final Book book;
  DetailsPage({Key key, this.book}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Widget buildTitle() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 50),
      child: Text(
        widget.book.title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget buildImage() {
    return (Image.network(
      widget.book.imageLinks.thumbnail,
      fit: BoxFit.cover,
      height: 300,
    ));
  }

  Widget buildDescription() {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0, bottom: 30.0),
      child: Text(
        widget.book.description,
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }

  Widget buildShelfTag() {
    return (Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0, right: 16.0),
      alignment: Alignment.topRight,
      child: ShelfChip(widget.book.shelf),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Book: " + widget.book.title.toString())
          .build(context),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                this.buildShelfTag(),
                this.buildTitle(),
                this.buildImage(),
                this.buildDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
