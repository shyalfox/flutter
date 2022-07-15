// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 20) {
      resultText = 'Not bad';
    } else if (resultScore < 30) {
      resultText = 'You are awesome ';
    } else if (resultScore >= 30) {
      resultText = 'You haaaat  🦍🥵 ';
    } else {}
    return resultText;
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
            onPressed: resetHandler,
            child: Text('Restart My Chad Test!'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
