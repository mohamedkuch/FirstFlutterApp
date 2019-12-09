import 'package:crypto_converter/quiz.dart';
import 'package:crypto_converter/result.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 100},
        {'text': 'Red', 'score': 50},
        {'text': 'Blue', 'score': 0},
        {'text': 'Yellow', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite name ?',
      'answers': [
        {'text': 'mohamed', 'score': 100},
        {'text': 'kush', 'score': 50},
        {'text': 'kk', 'score': 0},
        {'text': 'hmiiz', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Monkey', 'score': 10},
        {'text': 'Lion', 'score': 50},
        {'text': 'Snake', 'score': 100},
        {'text': 'Dog', 'score': 20},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _restartGame () {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartGame),
      ),
    );
  }
}
