import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answer;

  Quiz({@required this.questions, @required this.answer, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[index]['questionText'],
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return Answers(() => answer(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
