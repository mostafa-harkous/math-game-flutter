import 'package:flutter/material.dart';
import 'package:math_game/features/quiz/views/screens/quiz_screen.dart';

class QuizCard extends StatefulWidget {
 final String category;
  const QuizCard({super.key, required this.category});

  @override
  QiuzCardState createState() => QiuzCardState();
}

class QiuzCardState extends State<QuizCard>
    with SingleTickerProviderStateMixin {
  double cardWidth = 200;
  bool expanded = false;
  String title = "";
  IconData? a;
  Color titleColor = const Color.fromARGB(255, 83, 147, 200);
  Color starColor = const Color.fromARGB(255, 83, 147, 200);
  double imageSize = 1;
  
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        expanded = true;
        cardWidth = MediaQuery.of(context).size.width;
      });
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        title =  widget.category;
        titleColor = Colors.white;
      });
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        a = Icons.star;
        starColor = Colors.white;
      });
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        imageSize = 70;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 83, 147, 200),
      elevation: 6,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: InkWell(
        onTap: () {Navigator.of(context).push(
    MaterialPageRoute(builder: (context) =>  QuizScreen(category: widget.category,)),
  );},
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: const Duration(seconds: 1),
          height: 140,
          width: cardWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedDefaultTextStyle(
                      duration: const Duration(seconds: 1),
                      style: TextStyle(
                          fontSize: 30,
                          color: titleColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontStyle: FontStyle.italic),
                      child: Text(
                        title,
                      ),
                    ),
                    Icon(
                      a,
                      color: starColor,
                    ),
                    Icon(
                      a,
                      color: starColor,
                    ),
                    Icon(
                      a,
                      color: starColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Image.asset(
                  'images/addition.png',
                  height: imageSize,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
