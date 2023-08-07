import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 180,
          child: ElevatedButton(
            onPressed: selectHandler,
            child: Text(
              answerText,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green.shade400),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
