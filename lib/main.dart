import 'package:flutter/material.dart';
import 'package:test1/quiz.dart';
// ignore: unused_import

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  var _questionIndex = 0;

  // ignore: non_constant_identifier_names
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable, non_constant_identifier_names
    final _questions = [
      {
        'questionText': 'What\'s Your Name?',
        'answers': ['Ali Hamza', 'Daniyal', 'Ibrahim', 'Saad', 'Numan'],
      },
      {
        'questionText': 'What\'s Your Uni?',
        'answers': ['Fast', 'Nust', 'GiKi', 'UMT', 'UCP'],
      },
      {
        'questionText': 'What is Your Department',
        'answers': ['SE', 'CS', 'EE', 'MG', 'DS'],
      },
    ];
    return MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 93, 122, 121),
          title: const Text('Mixture of text'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : const Center(
                child: Text('No More Question, You Did it!'),
              ),
      ),
    );
  }
}
