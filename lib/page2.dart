import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  //Question({super.key});
  final String questionText;
  const Question(this.questionText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
