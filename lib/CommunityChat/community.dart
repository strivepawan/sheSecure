import 'package:flutter/material.dart';

class CommunityChat extends StatelessWidget {
  final VoidCallback onPressed;

  CommunityChat({required this.onPressed});

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
                'assets/img_chatmessage.png', // Replace with your image asset path
                width: 100, // Adjust the width as needed
                height: 80, // Adjust the height as needed
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Community Reporting',
                  style: TextStyle(
                    color: Colors.black, // Customize the text color as needed
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Chating Box to seek the help from nearby user',
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

