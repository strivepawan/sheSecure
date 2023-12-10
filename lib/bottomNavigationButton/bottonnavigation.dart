// custom_bottom_navigation_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey, // Customize the background color as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, "Home", 0),
          _buildNavItem(Icons.chat, "Community", 1),
          _buildNavItem(Icons.security, "Private Report", 2),
          _buildNavItem(Icons.map, "GeoMapping", 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: currentIndex == index ? Colors.blue : Colors.grey),
          Text(label, style: TextStyle(color: currentIndex == index ? Colors.blue : Colors.grey)),
        ],
      ),
    );
  }
}
