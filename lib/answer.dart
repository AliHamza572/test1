import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandlar;
  final String answerText;
  const Answer(this.selectHandlar, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      // ignore: prefer_con
      // st_constructors
      child: ElevatedButton(
        onPressed: () => {selectHandlar()},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 176, 139, 211)),
        child: Text(answerText),
      ),
    );
  }
}
