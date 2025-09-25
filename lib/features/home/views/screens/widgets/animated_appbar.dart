import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget {
  const AnimatedAppBar({super.key});

  @override
  AnimatedAppBarState createState() => AnimatedAppBarState();
}

class AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  double appBarHeight = 10;
  bool expanded = false;
  Color textColor = Colors.amber;
  String a = "Train Your Brain";
  double textSize = 20;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 300), () {
      setState(() {
        appBarHeight = 170;
        textColor = Colors.white;
        expanded = true;
        textSize = 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.linearToEaseOut,
        height: appBarHeight,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
        child: Center(
            child: AnimatedDefaultTextStyle(
          style: TextStyle(color: textColor, fontSize: textSize),
          duration: const Duration(seconds: 5),
          child: Text(a),
        )));
  }
}
