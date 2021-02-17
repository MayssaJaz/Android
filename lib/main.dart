import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _answerQuestion() {
    setState(() {
      _index++;
    });
    print(_index);
  }

  static const questions = const [
    {
      'questionText': "Whats ur favourite color?",
      'Answer': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "Whats ur favourite animal?",
      'Answer': ['Rabbit', 'Snake', 'Goat', 'Cat']
    },
    {
      'questionText': "Whats ur favourite instructor?",
      'Answer': ['Missa', 'Mayssa', 'Momo', 'MMM']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questions'),
            ),
            body: Column(
              children: [
                Question(questions[_index]['questionText']),
                ...(questions[_index]['Answer'] as List<String>).map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
