import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Videoprogress extends StatelessWidget {
  const Videoprogress(
      {super.key,
      required this.data,
      required this.cardwidth,
      required this.cardheight});
  final Map<String, dynamic> data;
  final cardwidth;
  final cardheight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              data["image"] ?? '',
              height: cardheight,
              width: cardwidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(
              value: data['progress'],
              backgroundColor: Colors.grey.withOpacity(0.5),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
          )
        ]),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: cardwidth,
          child: Text(
            data["title"] ?? 'Movie name',
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: cardwidth * 0.07),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                
                
          ),
        ),
      ],
    );
  }
}
