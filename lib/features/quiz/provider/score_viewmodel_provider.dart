import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScoreViewModel extends StateNotifier<int> {
  ScoreViewModel() : super(0);

  void toggleSelected() {
    state += 1;
  }

  void reset() {
    state = 0;
  }
}
