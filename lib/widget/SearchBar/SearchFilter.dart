

import 'package:flutter/material.dart';

class Searchfilter extends StatelessWidget {
  const Searchfilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
     
      child: ClipRect(
        child: Image.asset('assets/icons/Settings-adjust.png'),
      ),
      decoration: BoxDecoration(
         color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}