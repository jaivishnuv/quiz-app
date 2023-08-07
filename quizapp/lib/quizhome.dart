import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  final _vijay = const [
    {
      'questionText': ' What\'s your favourite color?',
      'answers': [
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Red', 'Score': 5},
        {'Text': 'Green', 'Score': 3},
        {'Text': 'White', 'Score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'Text': 'Rabit', 'Score': 2},
        {'Text': 'Snake', 'Score': 5},
        {'Text': 'Elephant', 'Score': 8},
        {'Text': 'Black', 'Score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'Text': 'Max', 'Score': 1},
        {'Text': 'Max', 'Score': 1},
        {'Text': 'Max', 'Score': 1},
        {'Text': 'Max', 'Score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });

    if (_questionIndex < _vijay.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "My First App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: _questionIndex < _vijay.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                vijay: _vijay,
              )
            : Result(_totalScore, _resetQuiz));
  }
}
