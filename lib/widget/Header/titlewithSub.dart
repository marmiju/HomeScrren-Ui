import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Titlewithsub extends StatelessWidget {
  const Titlewithsub({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Hello ',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  )),
              TextSpan(
                text: 'Rafsan',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Text(
          "Let's watch Today",
          style: TextStyle(color: Theme.of(context).disabledColor),
        ),
      ],
    );
  }
}
