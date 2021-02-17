import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;
  Quiz({this.answerQuestion, this.index, this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
