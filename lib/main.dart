import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {

  var questionIndex = 0; 

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite name',
      'What\'s your favorite dog',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1 '),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2 '),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3 '),
              onPressed: () => {
                questionIndex = 2

              },
            )
          ],
        ),
      ),
    );
  }

}
