import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

class Quiz extends StatelessWidget {
  //const  Quiz({super.key});

  final List<Map<String, Object>> vijay;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    required this.vijay,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(vijay[questionIndex]['questionText'] as String),
        ...(vijay[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((master) {
          return Answer(
              () => answerQuestion(master['Score']), master['Text'] as String);
        })
      ],
    );
  }
}
