import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardwithtitle extends StatelessWidget {
   const Cardwithtitle({super.key,required this.data, required this.cardheight});
   final Map<String,String> data;
   final cardheight;

  

  @override
  Widget build(BuildContext context) {
    
    
    return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(data["image"] ?? '',height: 120, width: 80, fit: BoxFit.cover,),
            ),
            SizedBox(height: 8,),
            Text(data["title"] ?? 'Movie name',style: GoogleFonts.roboto(
              color: Colors.white60
            ),)
          ],
        );
   
  }
}