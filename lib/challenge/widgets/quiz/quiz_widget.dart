import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppTextStyles.heading),
        SizedBox(
          height: 24,
        ),
        AnswerWidget(title: 'title'),
        AnswerWidget(title: 'title'),
        AnswerWidget(title: 'title'),
        AnswerWidget(title: 'title')
      ],
    );
  }
}
