import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/provider/question_viewmodel_provider.dart';

class Question extends ConsumerWidget {
  final String category;
  const Question({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? question;

    if (category == "Addition") {
      question = ref.watch(additionQuestionViewModelProvider);
    } else if (category == "Subtract"){
      question = ref.watch(subtractQuestionViewModelProvider);
    }
    

    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan, borderRadius: BorderRadius.circular(12)),
      height: 200,
      width: 200,
      child: Center(
          child: Text(
        question!,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
