import 'package:flutter/material.dart';
import 'package:math_game/features/home/views/screens/home_screen.dart';
import 'package:math_game/features/quiz/views/screens/widgets/options.dart';
import 'package:math_game/features/restart_widget.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => TimerState();
}

class TimerState extends State<Timer> {
  double? timerwidth;
  double? a;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timerwidth = MediaQuery.of(context).size.width;
      setState(() {});
      a = timerwidth! - timerwidth! * 0.10;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        a = 0;
      });
    });

    Future.delayed(const Duration(seconds: 63), () {
      setState(() {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Oops!'),
            content: Text('Time out. Your Score : ${scoreCounter! }'),
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

                      }),
                ],
              ),
            ],
          ),
        );
       
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      AnimatedContainer(
        height: 70,
        width: timerwidth! - timerwidth! * 0.10,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            shape: BoxShape.rectangle,
            color: Colors.amber),
        duration: const Duration(seconds: 2),
      ),
      Positioned(
          child: AnimatedContainer(
        height: 70,
        width: a,
        duration: const Duration(seconds: 60),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 20, 177, 191)),
      ))
    ]));
  }
}
