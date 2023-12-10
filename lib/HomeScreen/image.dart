import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        // Your background image or content goes here

        // Overlapping images
        Positioned(
          // top: screenSize.height * 0.2,
          // left: screenSize.width * 0.3,
          child: Image.asset(
            'assets/img_image1.png', // Replace with your image asset
            width: screenSize.width * 1,
            height: screenSize.height * 0.45,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          // top: screenSize.height * 0.25,
          // left: screenSize.width * 0.45,
          child: Image.asset(
            'assets/img_girlswithphones.png', // Replace with your image asset
            width: screenSize.width * 1,
            height: screenSize.height * 0.6,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}