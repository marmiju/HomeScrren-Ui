import 'package:flutter/material.dart';
import 'package:home_screen/widget/CardWithTitle/CardwithTitle.dart';
import 'package:home_screen/widget/HeadingTitle.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {"title": "XOXO the Kia", "image": "assets/images/m1.png"},
      {"title": "play More", "image": "assets/images/m2.png"},
      {"title": "Spirint Night", "image": "assets/images/m3.png"},
      {"title": "Happy HoliDays", "image": "assets/images/m4.png"},
      {"title": "Soul Mate", "image": "assets/images/2.png"},
      {"title": "UB's Secret", "image": "assets/images/3.png"},
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        double size = constraints.maxWidth ; 
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headingtitle(title:'Trending Movies'),
            
            SizedBox(
               height: size * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Cardwithtitle(data: movies[index], cardwidth: size * 0.4, cardheight: size *0.6,),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
