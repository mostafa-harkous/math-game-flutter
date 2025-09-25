import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/data/addition_questions.dart';
import 'package:math_game/features/quiz/data/subtract_questions.dart';
import 'package:math_game/features/quiz/views/screens/widgets/options.dart';

class AdditionOptionViewModel extends StateNotifier<List<String?>> {
  AdditionOptionViewModel() : super(additionQuestions[currentIndex].answers);

  void toggleSelected() {
    state = additionQuestions[currentIndex].answers;
  }
}

class SubtractOptionViewModel extends StateNotifier<List<String?>> {
  SubtractOptionViewModel() : super(subtractQuestions[currentIndex].answers);

  void toggleSelected() {
    state = subtractQuestions[currentIndex].answers;
  }
}

class BorderColorViewModel extends StateNotifier<Color> {
  BorderColorViewModel() : super(Colors.white);

  void toggleSelected(Color a) {
    state = a;
  }
}
