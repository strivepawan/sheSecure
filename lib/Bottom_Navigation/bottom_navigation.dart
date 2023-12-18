import 'package:flutter/material.dart';
import 'package:shesecure/CommunityChat/communityScreen.dart';
import 'package:shesecure/HomeScreen/homescreen.dart';
import 'package:shesecure/PrivateReport/Private_report_screen.dart';
import 'package:shesecure/geomapping/geomapping_screen.dart';


class ViewScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ViewScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    Community_Chat_Box(),
    Private_Report_screen(),
    Geomapping_screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Scaffold(
        backgroundColor: Colors.blue,
        // appBar: AppBar(
        //   title: Text('She Secure'),
        // ),
        body: Container(
          // color: Colors.blueAccent,
          child: _screens[_currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.green,
          // unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.green),
          unselectedLabelStyle: TextStyle(color: Colors.green),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Color(0xff96a0ff),size: 32,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat,color: Color(0xff96a0ff),size: 32,),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report,color: Color(0xff96a0ff),size: 32,),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map,color: Color(0xff96a0ff),size: 32,),
              label: 'Geomapping',
            ),
          ],
        ),
      ),
    );
  }
}

