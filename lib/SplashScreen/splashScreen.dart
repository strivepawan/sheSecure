import 'package:flutter/material.dart';
import 'package:shesecure/HomeScreen/homescreen.dart';

// Inside SplashScreen widget
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/she_Secureicon.jpeg'),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DelayedWidget(
        // Wrap SplashScreen in DelayedWidget for the transition delay
        child: SplashScreen(),
        delay: Duration(seconds: 2), // Set the delay duration (2 seconds in this example)
      ),
    );
  }
}

class DelayedWidget extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const DelayedWidget({Key? key, required this.child, required this.delay})
      : super(key: key);

  @override
  _DelayedWidgetState createState() => _DelayedWidgetState();
}

class _DelayedWidgetState extends State<DelayedWidget> {
  @override
  void initState() {
    super.initState();
    // Delay for the specified duration
    Future.delayed(widget.delay, () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
