import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selecthabdler;
  final String answertext;
  Answers(this.selecthabdler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.black,
          textColor: Colors.white,
          child: Text(answertext),
          onPressed: selecthabdler,
        ));
  }
}
