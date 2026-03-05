import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizStart, {super.key});
  final void Function() quizStart;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png', 
              width: 400, 
              height: 400,
              color: const Color.fromARGB(150, 255, 255, 255),
              ),
            const SizedBox(height: 60),
            const Text(
              'Learn flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: quizStart,
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text("Start Quiz", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
    );
  }
}
