import 'package:crypto_converter/answer.dart';
import 'package:flutter/material.dart';

import 'package:crypto_converter/question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color ?',
        'answers': ['White', 'Black', 'Blue', 'Red']
      },
      {
        'questionText': 'What\'s your favorite name ?',
        'answers': ['Kush', 'dd', 'bb', 'Rick']
      },
      {
        'questionText': 'What\'s your favorite animal ?',
        'answers': ['rabbit', 'Lion', 'Monkey', 'Elephant']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              print(answer);

              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
