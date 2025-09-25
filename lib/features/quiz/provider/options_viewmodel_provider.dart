import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/viewmodel/options_viewmodel.dart';

// Riverpod provider for OptionViewModel
final subtractOptionViewModelProvider =
    StateNotifierProvider<SubtractOptionViewModel, List <String?>>(
  (ref) => SubtractOptionViewModel(),
);



final additionOptionViewModelProvider =
    StateNotifierProvider<AdditionOptionViewModel, List <String?>>(
  (ref) => AdditionOptionViewModel(),
);



final borderColorViewModelProvider = 
StateNotifierProvider< BorderColorViewModel, Color >((ref) =>BorderColorViewModel() );





