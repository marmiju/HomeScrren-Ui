import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedindex = 0; // Declare selectedindex here, so it persists across rebuilds

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["All", "Action", "Anime", "Sci-fi","Thriller"];

    return Container(
      height: 100, // Set a reasonable height for the container
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Category',
                style: GoogleFonts.akatab(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See More',
                  style: GoogleFonts.akatab(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
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
