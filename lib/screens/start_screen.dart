import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton.icon(
            onPressed: switchScreen,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 249, 248, 235),
              foregroundColor: const Color.fromARGB(255, 46, 58, 81),
              padding: const EdgeInsets.all(15),
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 46, 58, 81),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 46, 58, 81),
            ),
            iconAlignment: IconAlignment.end,
          ),
        ],
      ),
    );
  }
}
