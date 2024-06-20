import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.optionText, this.onTap, {super.key});

  final String optionText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 249, 248, 235),
        ),
        child: Text(
          optionText,
          style: GoogleFonts.poppins(
            color: const Color.fromARGB(255, 46, 58, 81),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
