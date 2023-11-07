import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textcolor;
  final String buttonText;
  final double fontSize;
  final buttonTapped;

  MyButton({
    required this.color,
    required this.textcolor,
    required this.buttonText,
    required this.fontSize,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 20,
          child: Center(
            child: Text(
              buttonText,
              style: GoogleFonts.lato(
                color: textcolor,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
