import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MySlapApp());
}

class MySlapApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MySlapAppState();
  }
}

class _MySlapAppState extends State<MySlapApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 6},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Ape', 'score': 10},
        {'text': 'Monkey', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Momo', 'score': 10},
        {'text': 'Chow', 'score': 5},
        {'text': 'Juice', 'score': 4},
        {'text': 'Hot_Dog', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('NO more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chad App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
