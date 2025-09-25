import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/quiz/viewmodel/score_viewmodel.dart';
import 'package:math_game/features/quiz/views/screens/widgets/options.dart';
import 'package:math_game/features/quiz/views/screens/widgets/question.dart';
import 'package:math_game/features/quiz/views/screens/widgets/timer.dart';

class QuizScreen extends StatelessWidget {
  final String category;

  const QuizScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60.0, bottom: 100),
            child: Timer(),
          ),
          Question(
            category: category,
          ),
          const SizedBox(
            height: 110,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Options(
                optionNumb: 0,
                category: category,
              ),
              Options(
                optionNumb: 1,
                category: category,
              ),
            ],
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Options(
                optionNumb: 2,
                category: category,
              ),
              Options(
                optionNumb: 3,
                category: category,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        const Center(child: Score())
        ],
      )),
    );
  }
}

class Score extends ConsumerWidget {
 const Score({super.key});

  @override
  Widget build(BuildContext context  , WidgetRef ref) {
   scoreCounter = ref.watch(scoreViewModelProvider);
    return  Container( height: 40, width: 100,decoration: const BoxDecoration(color: Colors.cyan , borderRadius: BorderRadius.all(Radius.circular(12)) ),
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text("Score :  $scoreCounter"))
      ],),
    );
  }
}
