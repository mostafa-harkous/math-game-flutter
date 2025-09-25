import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/features/home/views/screens/home_screen.dart';
import 'package:math_game/features/quiz/data/addition_questions.dart';
import 'package:math_game/features/quiz/data/subtract_questions.dart';
import 'package:math_game/features/quiz/provider/options_viewmodel_provider.dart';
import 'package:math_game/features/quiz/provider/question_viewmodel_provider.dart';
import 'package:math_game/features/quiz/viewmodel/score_viewmodel.dart';
import 'package:math_game/features/restart_widget.dart';

int currentIndex = 0;
int? scoreCounter;

class Options extends ConsumerWidget {
  final int optionNumb;

  final String category;
  const Options({super.key, required this.optionNumb, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List? answers;
    Color borderColor = Colors.white;
    scoreCounter = ref.watch(scoreViewModelProvider);



    
    if (category == "Addition") {
      answers = ref.watch(additionOptionViewModelProvider);
      if (additionQuestions[currentIndex].answers.elementAt(optionNumb) ==
          additionQuestions[currentIndex].correct) {
        borderColor = ref.watch(borderColorViewModelProvider);
      }
    }

    if (category == "Subtract") {
      answers = ref.watch(subtractOptionViewModelProvider);
      if (subtractQuestions[currentIndex].answers.elementAt(optionNumb) ==
          subtractQuestions[currentIndex].correct) {
        borderColor = ref.watch(borderColorViewModelProvider);
      }
    }

    return Card(
      child: InkWell(
          onTap: () {
            if (category == "Addition") {
              if (additionQuestions[currentIndex]
                      .answers
                      .elementAt(optionNumb) ==
                  additionQuestions[currentIndex].correct) {
                ref.read(scoreViewModelProvider.notifier).toggleSelected();
                ref
                    .read(borderColorViewModelProvider.notifier)
                    .toggleSelected(Colors.green);
                if (scoreCounter == 9) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('EXCELLENT!!!'),
                      content:
                          Text('YOU WON !! Your Score : ${scoreCounter! + 1}'),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.sentiment_very_satisfied,
                            ),
                            TextButton(
                              child: const Text('Back to Home'),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                                RestartWidget.restartApp(context);

                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }

                Future.delayed(const Duration(milliseconds: 900), () {
                  ref
                      .read(additionQuestionViewModelProvider.notifier)
                      .toggleSelected();
                  ref
                      .read(additionOptionViewModelProvider.notifier)
                      .toggleSelected();
                  ref
                      .read(borderColorViewModelProvider.notifier)
                      .toggleSelected(Colors.white);
                });
              } else if (additionQuestions[currentIndex]
                      .answers
                      .elementAt(optionNumb) !=
                  additionQuestions[currentIndex].correct) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Oops!'),
                    content:
                        Text('Wrong answer. Your Score : ${scoreCounter! }'),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.sentiment_very_dissatisfied,
                          ),
                          TextButton(
                            child: const Text('Back to Home'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                               RestartWidget.restartApp(context);

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            }

            if (category == "Subtract") {
              if (subtractQuestions[currentIndex]
                      .answers
                      .elementAt(optionNumb) ==
                  subtractQuestions[currentIndex].correct) {
                ref.read(scoreViewModelProvider.notifier).toggleSelected();
                ref
                    .read(borderColorViewModelProvider.notifier)
                    .toggleSelected(Colors.green);

                if (scoreCounter == 9) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('EXCELLENT!!!'),
                      content:
                          Text('YOU WON !! Your Score : ${scoreCounter! + 1}'),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.sentiment_very_satisfied,
                            ),
                            TextButton(
                              child: const Text('Back to Home'),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                                        RestartWidget.restartApp(context);

                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }

                Future.delayed(const Duration(milliseconds: 900), () {
                  ref
                      .read(subtractQuestionViewModelProvider.notifier)
                      .toggleSelected();
                  ref
                      .read(subtractOptionViewModelProvider.notifier)
                      .toggleSelected();
                  ref
                      .read(borderColorViewModelProvider.notifier)
                      .toggleSelected(Colors.white);
                });
              } else if (subtractQuestions[currentIndex]
                      .answers
                      .elementAt(optionNumb) !=
                  subtractQuestions[currentIndex].correct) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Oops!'),
                    content: Text('Wrong answer. Your Score : ${scoreCounter! }'),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.sentiment_very_dissatisfied,
                          ),
                          TextButton(
                            child: const Text('Back to Home'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                                     RestartWidget.restartApp(context);

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(color: borderColor, width: 3),
                    bottom: BorderSide(color: borderColor, width: 3),
                    right: BorderSide(color: borderColor, width: 3),
                    left: BorderSide(color: borderColor, width: 3))),
            child: Center(
              child: Text(
                answers!.elementAt(optionNumb),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
