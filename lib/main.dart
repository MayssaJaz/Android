import 'package:flutter/material.dart';
import './quiz.dart';

import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    print(_totalScore);
    _totalScore += score;
    setState(() {
      _index++;
    });
    print(_index);
  }

  final _questions = const [
    {
      'questionText': "Whats ur favourite color?",
      'Answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': "Whats ur favourite animal?",
      'Answer': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Sbake', 'score': 5},
        {'text': 'Goat', 'score': 3},
        {'text': 'Cat', 'score': 1},
      ]
    },
    {
      'questionText': "Whats ur favourite instructor?",
      'Answer': [
        {'text': 'Missa', 'score': 10},
        {'text': 'Mayssa', 'score': 5},
        {'text': 'May', 'score': 3},
        {'text': 'MM', 'score': 1},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questions'),
            ),
            body: _index < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    index: _index,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
