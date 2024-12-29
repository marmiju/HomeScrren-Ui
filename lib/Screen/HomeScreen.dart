import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screen/widget/Category/Category.dart';
import 'package:home_screen/widget/ContinueWatching/ContinueWatching.dart';
import 'package:home_screen/widget/Header/Header.dart';
import 'package:home_screen/widget/ImageCarsor.dart';
import 'package:home_screen/widget/Movies/Movies.dart';
import 'package:home_screen/widget/Recommanded/Recommanded.dart';
import 'package:home_screen/widget/SearchBar/Serchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(),
        Serchbar(),
        Category(),
        Imagecarsor(),
        Movies(),
        Continuewatching(),
        Recommanded(),
      ],
    ),
    Center(
        child: Text(
      'Tv',
      style: GoogleFonts.roboto(color: Colors.white),
    )),
    Center(
        child: Text(
      'Download',
      style: GoogleFonts.roboto(color: Colors.white),
    )),
    Center(
        child: Text(
      'Profile',
      style: GoogleFonts.roboto(color: Colors.white),
    )),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      // Bottom Navigation Bar added directly to the Scaffold
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 16,right: 16,bottom: 20),
        padding: EdgeInsets.all(10),
       
        decoration: BoxDecoration(
          color: Color(0xFF1C212A),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  _onItemTapped(0); // Set the index to 0 (Home)
                },
                icon: Icon(
                  Icons.home_filled,
                  color: _selectedIndex == 0 ? Colors.red : Colors.grey,
                  size:30 ,
                ),
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(1); // Set the index to 1 (TV)
                },
                icon: Icon(
                  Icons.tv,
                  color: _selectedIndex == 1 ? Colors.red : Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(2); // Set the index to 2 (Downloads)
                },
                icon: Icon(
                  Icons.download,
                  color: _selectedIndex == 2 ? Colors.red : Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(3); // Set the index to 3 (Profile/More)
                },
                icon: Icon(
                  Icons.account_circle,
                  color: _selectedIndex == 3 ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
