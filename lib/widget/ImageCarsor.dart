import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Imagecarsor extends StatefulWidget {
  const Imagecarsor({super.key});

  @override
  State<Imagecarsor> createState() => _ImagecarsorState();
}

class _ImagecarsorState extends State<Imagecarsor> {
  final PageController _pageController = PageController(); 
  @override
  Widget build(BuildContext context) {
    List imageList = [1,2,3];
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              itemCount:imageList.length,
              itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(16),
                     child: Image.asset('assets/images/${imageList[index]}.png',
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
  }
}
