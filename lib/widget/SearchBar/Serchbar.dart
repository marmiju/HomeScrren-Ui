import 'package:flutter/material.dart';
import 'package:home_screen/widget/SearchBar/SearchField.dart';
import 'package:home_screen/widget/SearchBar/SearchFilter.dart';

class Serchbar extends StatelessWidget {
  const Serchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: EdgeInsets.only(top: 30),
        height: 50,
        child: Row(
          children: [
            Searchfield(),
            Searchfilter()
                 
          ],
             
            ), 
      );
  }
}