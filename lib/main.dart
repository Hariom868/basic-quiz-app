import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Which of these Exception handlers can not be type parameterized ?',
      'answers': [
        {'text': 'throws', 'score': 0},
        {'text': 'throw', 'score': 0},
        {'text': 'catch', 'score': 0},
        {'text': 'all of the above', 'score': 1},
      ],
    },
    {
      'questionText': 'Which can cause an assertion statement to be ignored ?',
      'answers': [
        {
          'text': 'Using both appropriate compiler and runtime options',
          'score': 0
        },
        {'text': 'Using appropriate compiler options', 'score': 0},
        {'text': 'nothing', 'score': 0},
        {'text': 'Using appropriate runtime options', 'score': 1},
      ],
    },
    {
      'questionText':
          'When we implement the Runnable interface, we must define the method ?',
      'answers': [
        {'text': 'init()', 'score': 0},
        {'text': 'sleep()', 'score': 0},
        {'text': 'start()', 'score': 0},
        {'text': 'run()', 'score': 1},
      ],
    },
    {
      'questionText':
          'Which of these are core interfaces in the collection framework?',
      'answers': [
        {'text': 'Set', 'score': 0},
        {'text': 'Collection', 'score': 0},
        {'text': 'Map', 'score': 0},
        {'text': 'all of the above', 'score': 1},
      ],
    },
    {
      'questionText': 'How can the priority of thread be set?',
      'answers': [
        {
          'text': 'By using the setPriority() method in the class Thread',
          'score': 1
        },
        {
          'text':
              'By passing the priority as a parameter to the constructor of the thread',
          'score': 0
        },
        {'text': 'Both of the above', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
  ];
  int _index = 0;
  var _total = 0;
  void _resetQuiz() {
    setState(() {
      _index = 0;
      _total = 0;
    });
  }

  void _answer(int score) {
    _total = _total + score;
    setState(() {
      _index = _index + 1;
    });
    print(_index);
    if (_index < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _index < _questions.length
              ? Quiz(
                  questions: _questions,
                  index: _index,
                  answer: _answer,
                )
              : Result(_total, _resetQuiz)),
    );
  }
}
