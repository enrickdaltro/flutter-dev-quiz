import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

enum HomeState { success, loading, error, empty }

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Enrick",
      photoUrl: 'https://avatars.githubusercontent.com/u/49761746?v=4',
    );
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: 'Gerenciamento de estado',
          questionAnswered: 1,
          questions: [
            QuestionModel(title: 'Está curtindo o flutter?', answers: [
              AnswerModel(title: 'Estou curtindo!'),
              AnswerModel(title: 'Bom dimais junio!'),
              AnswerModel(title: 'Massa!'),
              AnswerModel(title: 'Top demais!', isRight: true),
            ]),
            QuestionModel(title: 'Está curtindo o flutter?', answers: [
              AnswerModel(title: 'Estou curtindo!'),
              AnswerModel(title: 'Bom dimais junio!'),
              AnswerModel(title: 'Massa!'),
              AnswerModel(title: 'Top demais!', isRight: true),
            ]),
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
    state = HomeState.success;
  }
}
