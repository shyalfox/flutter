import 'package:flutter/material.dart';

void main() {
  runApp(MySlapApp());
}

class MySlapApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choकen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What \'s your favouritr animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(''),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2 chosen'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('Answer 3 chosen');
            },
          ),
        ]),
      ),
    );
  }
}
