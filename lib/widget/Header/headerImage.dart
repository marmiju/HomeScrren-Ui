import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.all(2), // Space for the gradient border
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF00FFD3), const Color(0xFFFF008B)], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        shape: BoxShape.circle, // Ensures the gradient is circular
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          'assets/images/profile.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
