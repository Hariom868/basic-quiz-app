import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questiontext;
  Questions(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center,
        ));
  }
}
