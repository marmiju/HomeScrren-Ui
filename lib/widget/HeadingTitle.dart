import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headingtitle extends StatelessWidget {
   Headingtitle({super.key, required this.title,  this.btnclick});

  String title;
  final Function? btnclick;


  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Text(title,
                style: GoogleFonts.akatab(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: (){
                  btnclick;
                },
                child: Text(
                  'See More',
                  style: GoogleFonts.akatab(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          );
  }
}