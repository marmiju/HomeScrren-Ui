import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screen/widget/HeadingTitle.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedindex = 0; 

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["All", "Action", "Anime", "Sci-fi","Thriller"];

    return Container(
      height: 100, 
      child: Column(
        children: [
          Headingtitle(title: 'Category'),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:selectedindex == index
                          ? Theme.of(context).cardColor
                          : Color(0xFF221821),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                    ),
                    onPressed: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: selectedindex == index ? Colors.white : Colors.white30,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
