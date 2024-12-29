import 'package:flutter/material.dart';
import 'package:home_screen/widget/CardWithTitle/CardwithTitle.dart';
import 'package:home_screen/widget/HeadingTitle.dart';
import 'package:home_screen/widget/VideoProgress.dart';

class Continuewatching extends StatelessWidget {
  const Continuewatching({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> Watches = [
      {"title": "XOXO the Kia", "image": "assets/images/m1.png",'progress' : 0.24},
      {"title": "play More", "image": "assets/images/m2.png",'progress' : 0.56},
      {"title": "Spirint Night", "image": "assets/images/m3.png",'progress' : 0.9},
      {"title": "Happy HoliDays", "image": "assets/images/m4.png",'progress' : 0.56},
      {"title": "Soul Mate", "image": "assets/images/2.png",'progress' : 0.32},
      {"title": "UB's Secret", "image": "assets/images/3.png",'progress' : 0.69},
    ];
    return LayoutBuilder(
     builder: (context, constraints) {
      double size = constraints.maxWidth;
       return Column(
        children: [
          SizedBox(height: 16,),
          Headingtitle(title: "Continue watching",btnclick: (){},),
          SizedBox(
            height: size * 0.4 + 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Watches.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Videoprogress(data: Watches[index], cardwidth: size * 0.6 ,cardheight: size *0.35),
                  );
                },
              ),
          ) 
        ],
      );
     },
    );
  }
}