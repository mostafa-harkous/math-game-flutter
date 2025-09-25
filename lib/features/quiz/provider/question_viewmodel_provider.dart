import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/viewmodel/question_viewmodel.dart';

// Riverpod provider for QuestionViewModel
final additionQuestionViewModelProvider =
    StateNotifierProvider<AdditionQuestionViewModel, String?>(
  (ref) => AdditionQuestionViewModel(),
);

final subtractQuestionViewModelProvider =
    StateNotifierProvider<SubtractQuestionViewModel, String?>(
  (ref) => SubtractQuestionViewModel(),
);

