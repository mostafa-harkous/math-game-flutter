import 'package:flutter/material.dart';
import 'package:math_game/features/home/views/screens/widgets/animated_appbar.dart';
import 'package:math_game/features/home/views/screens/widgets/quiz_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  // double width  = MediaQuery.of(context).size.width ;
     double height = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: Column(
        children: [
           const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Center(
              child: AnimatedAppBar(),
            ),
          ),
        const QuizCard(
            category: "Addition",
          ),
        
          SizedBox(height: height*0.02,),
        
        const QuizCard(category: "Subtract")
                  ],
      ),
    );
  }
}
