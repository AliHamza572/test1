import 'package:flutter/material.dart';
import 'package:test1/page2.dart';
import 'package:test1/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function _answerQuestion;

  const Quiz(@required this.questions, @required this._answerQuestion,
      @required this._questionIndex,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(80, 219, 240, 241),
      child: Column(
        children: [
          Question(
            (questions[_questionIndex]['questionText'] as String),
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    );
  }
}
