import 'package:flutter/material.dart';
import 'package:shesecure/Bottom_Navigation/bottom_navigation.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewScreen(),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NavigationButton(),
//     );
//   }
// }

