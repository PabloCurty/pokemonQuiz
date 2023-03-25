import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) onAnswer;

  Quiz({
    super.key,
    required this.questions,
    required this.selectedQuestion,
    required this.onAnswer,
  });

  bool get hasSelectedQuestions {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestions
        ? questions[selectedQuestion].cast()['answer']
            as List<Map<String, Object>>
        : [];
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Question(questions[selectedQuestion]['text'].toString()),
            ...answers.map((resp) {
              return Answer(resp['text'] as String,
                  () => onAnswer(int.parse(resp['value'].toString())));
            }).toList(),
          ],
        ));
  }
}
