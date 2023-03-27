import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int value;
  final void Function() onRestartQuiz;

  const Result(this.value, this.onRestartQuiz, {super.key});

  String get resultStatement {
    if (value < 100) {
      return 'You could be better! Your score was $value out of 300 possible points';
    } else if (value < 150) {
      return 'You are good! Your score was $value out of 300 possible points';
    } else if (value < 190) {
      return 'You are very good! Your score was $value out of 300 possible points';
    } else if (value < 290) {
      return 'You are amazing! Your score was $value out of 300 possible points';  
    } else {
      return 'You are the best! Your score was $value out of 300 possible points';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultStatement,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: onRestartQuiz,
          child: const Text(
            'Restart?', 
            style: TextStyle(fontSize: 18)
          ), 
        ),
      ],
    );
  }
}
