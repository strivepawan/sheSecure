import 'package:flutter/material.dart';
import 'package:shesecure/CommunityChat/community.dart';
import 'package:shesecure/CommunityChat/communityScreen.dart';
import 'package:shesecure/HomeScreen/image.dart';
import 'package:shesecure/Person_Profile/profile.dart';
import 'package:shesecure/PrivateReport/Private_report_screen.dart';
import 'package:shesecure/PrivateReport/privateReport.dart';
import 'package:shesecure/SOS_Screen/sos_Screen.dart';
import 'package:shesecure/geomapping/geomapping.dart';
import 'package:shesecure/geomapping/geomapping_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("She Secure"),
        actions: [
            IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/jinny.jpg'), // Replace with the actual path to your image
            ),
          // IconButton(
          //   icon: Image.asset('assets/jinny.',
          //   width: 24,
          //   height: 24,
          //   ),
            onPressed: (){
            Navigator.of(context).push(_customPageRoute(PersonScreen()));
        

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PersonScreen()),
              // ); 
            },
            
            ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children:[
            HomeScreen1 (),
            CommunityChat(
              onPressed: () {
                // Navigate to the new screen or perform any action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Community_Chat_Box()),
                );
              },
            ),
            PrivateReport(
              onPressed: () {
                // Navigate to the new screen or perform any action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Private_Report_screen()),
                );
              },
            ),
            Geomappig(
              onPressed: () {
                // Navigate to the new screen or perform any action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Geomapping_screen()),
                );
              },
            ),
        ]
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the SOS screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SOSScreen()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 156, 31, 22),
        child: Tooltip(
          message: "SOS",
          child: Text('SOS',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        // child: Icon(Icons.add_alert,),
      ),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

PageRouteBuilder<dynamic> _customPageRoute(Widget page) {
  return PageRouteBuilder<dynamic>(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return page;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      const Offset begin = Offset(1.0, 0.0);
      const Offset end = Offset.zero;
      const Curve curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
