import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchfield extends StatefulWidget {
  const Searchfield({super.key});

  @override
  _SearchfieldState createState() => _SearchfieldState();
}

class _SearchfieldState extends State<Searchfield> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                cursorColor: Theme.of(context).disabledColor,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(color: Theme.of(context).disabledColor),
                  ),
                ),
              ),
            ),
            Icon(Icons.search,
                color: Theme.of(context).disabledColor, size: 25),
          ],
        ),
      ),
    );
  }
}
