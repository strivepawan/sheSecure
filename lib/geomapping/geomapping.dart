import 'package:flutter/material.dart';

class Geomappig extends StatelessWidget {
  final VoidCallback onPressed;

  Geomappig({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // Customize the color as needed
          borderRadius: BorderRadius.circular(10.0), 
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/img_trailmap.png', // Replace with your image asset path
                width: 100, // Adjust the width as needed
                height: 80, // Adjust the height as needed
              ),
            ),
            const
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Geomapping',
                  style: TextStyle(
                    color: Colors.black, // Customize the text color as needed
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Black spots and red time Zones near By You',
                  style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold// Customize the text color as needed
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}