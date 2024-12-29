import 'package:flutter/material.dart';
import 'package:home_screen/widget/CardWithTitle/CardwithTitle.dart';
import 'package:home_screen/widget/HeadingTitle.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {"title": "Yes I Do", "image": "assets/images/1.png"},
      {"title": "Soul Mate", "image": "assets/images/2.png"},
      {"title": "UB's Secret", "image": "assets/images/3.png"},
      {"title": "Yes I Do", "image": "assets/images/1.png"},
      {"title": "Soul Mate", "image": "assets/images/2.png"},
      {"title": "UB's Secret", "image": "assets/images/3.png"},
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardHeight = constraints.maxWidth * 0.4; 
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headingtitle(title:'Trending Movies'),
            const SizedBox(height: 16),
            SizedBox(
               height: cardHeight + 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Cardwithtitle(data: movies[index], cardheight: cardHeight),
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
