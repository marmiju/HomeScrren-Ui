import 'package:flutter/material.dart';
import 'package:home_screen/widget/Header/Header.dart';
import 'package:home_screen/widget/SearchBar/Serchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Serchbar(),
            ],
          ),
        ),
      ),
    );
  }
}