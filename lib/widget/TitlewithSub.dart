import 'package:flutter/material.dart';

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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white // Optional: Adjust size as needed
                ),
              ),
              TextSpan(
                text: 'Rafsan',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.white  // Ensure consistency if needed
                ),
              ),
            ],
          ),
        ),
        Text("Let's watch Today",style: TextStyle(
          color: Colors.white54
        ),),
        
      ],
    );
  }
}