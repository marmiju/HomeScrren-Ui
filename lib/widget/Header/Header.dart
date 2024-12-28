import 'package:flutter/material.dart';
import 'package:home_screen/widget/Header/TitlewithSub.dart';
import 'package:home_screen/widget/Header/headerImage.dart';

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