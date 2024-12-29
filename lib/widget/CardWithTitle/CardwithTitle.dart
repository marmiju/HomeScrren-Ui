import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardwithtitle extends StatelessWidget {
   const Cardwithtitle({super.key,required this.data, required this.cardwidth, required this.cardheight});
   final Map<String,String> data;
   final cardwidth;
   final cardheight;

  

  @override
  Widget build(BuildContext context) {
    
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(data["image"] ?? '',height: cardheight, width: cardwidth, fit: BoxFit.cover,),
            ),
            SizedBox(height: 12),
            SizedBox(
              width:cardwidth,
              child: Text(data["title"] ?? 'Movie name',style: GoogleFonts.roboto(
                color: Colors.white,  
                fontSize: cardwidth * 0.09
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              ),
            )
          ],
        );
  }
}