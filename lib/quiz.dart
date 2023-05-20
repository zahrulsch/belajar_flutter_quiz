import "package:flutter/material.dart";
import "package:mantraquiz/questions_screen.dart";
import "package:mantraquiz/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  void changeScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
