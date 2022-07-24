import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reStartQuize;

  Result(this.resultScore, this.reStartQuize);

  String get resultPhrase {
    String resultString = "";

    if (resultScore < 45) {
      resultString = "Your score so bad";
    } else if (resultScore <= 60) {
      resultString = "Pretty likeable";
    } else if (resultScore >= 100) {
      resultString = "Your score so good";
    }

    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart quiz!"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              reStartQuize.call();
            },
          )
        ],
      ),
    );
  }
}
