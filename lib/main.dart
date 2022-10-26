import 'package:flutter/material.dart';
import 'package:test1/quiz.dart';
import 'package:test1/result.dart';
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
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _backkey() {
    setState(() {
      _questionIndex--;
      _totalScore--;
    });
  }

  // ignore: non_constant_identifier_names
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
    final _questions = [
      {
        'questionText': 'What\'s Your Name?',
        'answers': [
          {'text': 'Ali Hamza', 'score': 10},
          {'text': 'Daniyal', 'score': 8},
          {'text': 'Ibrahim', 'score': 6},
          {'text': 'Saad', 'score': 4},
          {'text': 'Numan', 'score': 2}
        ],
      },
      {
        'questionText': 'What\'s Your Uni?',
        'answers': [
          {'text': 'Fast', 'score': 10},
          {'text': 'Nust', 'score': 8},
          {'text': 'GiKi', 'score': 6},
          {'text': 'UMT', 'score': 4},
          {'text': 'UCP', 'score': 2}
        ],
      },
      {
        'questionText': 'What is Your Department',
        'answers': [
          {'text': 'SE', 'score': 10},
          {'text': 'CS', 'score': 8},
          {'text': 'EE', 'score': 6},
          {'text': 'MG', 'score': 4},
          {'text': 'DS', 'score': 2}
        ],
      },
    ];
    return MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 177, 146, 180),
          leading: IconButton(
            onPressed: () => {_backkey()},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Center(child: Text('Quiz Portal')),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
