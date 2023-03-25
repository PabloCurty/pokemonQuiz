import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int value;

  const Result(this.value, {super.key});

  String get resultStatement {
    if (value < 100) {
      return 'You could be better! Your score was $value out of 200 possible points';
    } else if (value < 150) {
      return 'You are good! Your score was $value out of 200 possible points';
    } else if (value < 190) {
      return 'You are very good! Your score was $value out of 200 possible points';
    } else{
      return 'You are the best! Your score was $value out of 200 possible points';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            resultStatement,
            style: const TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
