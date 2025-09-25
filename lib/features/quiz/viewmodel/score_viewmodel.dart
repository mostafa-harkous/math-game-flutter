


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/provider/score_viewmodel_provider.dart';

final scoreViewModelProvider =
    StateNotifierProvider<ScoreViewModel, int>(
  (ref) => ScoreViewModel(),
);