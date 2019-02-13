import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  CustomAppBar({@required this.title, Key key, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w700,
            fontSize: 18),
      ),
      centerTitle: true,
      elevation: 0,
      actions: actions,
      backgroundColor: Colors.white,
    );
  }
}
