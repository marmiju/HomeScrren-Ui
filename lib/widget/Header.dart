import 'package:flutter/material.dart';
import 'package:home_screen/widget/Titlewithsub.dart';
import 'package:home_screen/widget/headerImage.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Titlewithsub(),
        Spacer(),
       HeaderImage()
      ],
    );
  }
}