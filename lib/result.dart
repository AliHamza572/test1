import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});
  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awosome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Preety Likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are So strange';
    } else {
      resultText = 'You are so Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () => {resetHandler()},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
          child: const Text('Restart Quiz'),
        ),
      ],
    ));
  }
}
