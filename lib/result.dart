import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetquiz;

  Result(this.score, this.resetquiz);
  String get resultPhrase {
    var z = score;
    var text = "you have completed the quiz with score \n";
    var o = z.toString();
    String phase = text + o;
    return phase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetquiz,
          ),
        ],
      ),
    );
  }
}
