import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetGame;

  Result(this.resultScore, this.resetGame);

  String get resultPhrase {
    String resultText = ' You did it !';
    if (resultScore > 50) {
      resultText = ' You did it ! PFFFFFFFFF';
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
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: resetGame,
        )
      ],
    ));
  }
}
