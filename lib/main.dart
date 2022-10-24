import 'package:flutter/material.dart';
// ignore: unused_import
import './page2.dart';
import './answer.dart';

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
    final questions = [
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
        body: Container(
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
        ),
      ),
    );
  }
}
