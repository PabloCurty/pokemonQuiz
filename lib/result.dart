import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
        child: const Center(
          child: Text(
            'Congratulations!',
            style: TextStyle(fontSize: 28),
          ),
        )
    );
  }
}
