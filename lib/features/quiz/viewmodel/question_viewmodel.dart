import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/data/addition_questions.dart';
import 'package:math_game/features/quiz/data/subtract_questions.dart';
import 'package:math_game/features/quiz/views/screens/widgets/options.dart';

class AdditionQuestionViewModel extends StateNotifier<String?> {
  AdditionQuestionViewModel() : super(additionQuestions[currentIndex].question);
  void toggleSelected() {
    currentIndex++;
    state = additionQuestions[currentIndex].question;
  }
   void reset() {
    currentIndex=0;
    state = additionQuestions[currentIndex].question;
  }
}



class SubtractQuestionViewModel extends StateNotifier<String?> {
  SubtractQuestionViewModel() : super(subtractQuestions[currentIndex].question);
  void toggleSelected() {
    currentIndex++;
    state = subtractQuestions[currentIndex].question;
  }
   void reset() {
    currentIndex=0;
    state = subtractQuestions[currentIndex].question;
  }
}
