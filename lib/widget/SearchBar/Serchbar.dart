import 'package:flutter/material.dart';
import 'package:home_screen/widget/SearchBar/SearchField.dart';

class Serchbar extends StatelessWidget {
  const Serchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Row(
        children: [
          Searchfield(),
          
        ],
     
    );
  }
}