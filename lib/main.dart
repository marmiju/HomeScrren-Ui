import 'package:flutter/material.dart';
import 'package:home_screen/Screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF11161F),
        disabledColor: Colors.white54,
        cardColor: Color(0xFFFF3440)
      ),
      home: HomeScreen()
    );
  }
}
