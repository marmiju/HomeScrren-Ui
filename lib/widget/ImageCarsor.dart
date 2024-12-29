

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Imagecarsor extends StatefulWidget {
  const Imagecarsor({super.key});

  @override
  State<Imagecarsor> createState() => _ImagecarsorState();
}

class _ImagecarsorState extends State<Imagecarsor> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      return setState(() {
        if (_currentPage < 2) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      });
    });
  }


   
  
  @override
  Widget build(BuildContext context) {
    List imageList = [1, 2, 3];
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardHeight = constraints.maxWidth * 0.4;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: cardHeight,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: imageList.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/${imageList[index]}.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 16),
            SmoothPageIndicator(
              controller: _pageController,
              count: imageList.length,

              effect: JumpingDotEffect(
                dotColor: Colors.white30,
                activeDotColor: Colors.white,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 8,
              ),
            ),
          ],
        );
      },
    );
  }
}
