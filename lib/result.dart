import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!!';
    if (score <= 8) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart quiz'),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
