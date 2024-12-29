import 'package:flutter/material.dart';
import 'package:home_screen/widget/CardWithTitle/CardwithTitle.dart';
import 'package:home_screen/widget/HeadingTitle.dart';

class Recommanded extends StatelessWidget {
  const Recommanded({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recommanded = [
      {"title": "Emily in Paris ISeason - 1I Episode - 1", "image": "assets/images/m2.png",},
      {"title": "Emily in Paris ISeason - 1I Episode - 1", "image": "assets/images/m3.png",},
      {"title": "Spirint Night | season - 1 | episode -3", "image": "assets/images/m1.png",},
      {"title": "Happy HoliDays | season - 3 | episode -2", "image": "assets/images/2.png",},
      {"title": "Emily in Paris ISeason - 1I Episode - 1", "image": "assets/images/1.png",},
      {"title": "Emily in Paris ISeason - 1I Episode - 1", "image": "assets/images/m2.png",},
      {"title": "Spirint Night | season - 1 | episode -3", "image": "assets/images/m3.png",},
      {"title": "Happy HoliDays | season - 3 | episode -2", "image": "assets/images/m4.png",},
      
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        double size = constraints.maxWidth ; 
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headingtitle(title:'Recommanded For You'),
            
            SizedBox(
               height: size * 0.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommanded.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Cardwithtitle(data: recommanded[index], cardwidth: size * 0.4, cardheight: size *0.6,),
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