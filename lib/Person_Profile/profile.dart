import 'package:flutter/material.dart';
import 'package:shesecure/Person_Profile/Profile_Activity/authority_response.dart';
import 'package:shesecure/Person_Profile/Profile_Activity/community_activity.dart';
import 'package:shesecure/Person_Profile/Profile_Activity/my_activity.dart';
import 'package:shesecure/Person_Profile/Profile_Activity/private_report.dart';
import 'package:shesecure/Person_Profile/Profile_Activity/response.dart';

class PersonScreen extends StatelessWidget {
  void _showPopup(BuildContext context, Widget buttonWidget) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return buttonWidget;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          // Container for image, student name, and student destination
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              // color: Colors.blue, // Background color for the first container
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16,),
                // Circular Image
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/jinny.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Student Name
                Text(
                  'Student Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Text color
                  ),
                ),
                SizedBox(height: 8),
                // Student Destination
                Text(
                  'Student Destination',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    // backgroundColor: Colors.blue, // Background color for the text
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Container for buttons
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              // color: Colors.green, // Background color for the second container
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Row with 2 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _showPopup(context, MyActivity());
                      },
                      child: Text('My Activity',
                      style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        _showPopup(context, Response());
                      },
                      child: Text('Responses',
                      style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Row with 2 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _showPopup(context, CommunityActivity());
                      },
                      child: Text('Community\nActivity',
                      style: TextStyle(fontSize:16,color: Colors.black),),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        _showPopup(context, PrivateReport());
                      },
                      child: Text('Private   \nReporting',
                      style: TextStyle(fontSize:16,color: Colors.black),),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Row with 1 button
                ElevatedButton(
                  onPressed: () {
                    _showPopup(context, AuthorityResponse());
                  },
                  child: Text('Authority\nResponse',
                  style: TextStyle(fontSize:16,color: Colors.black),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// PageRouteBuilder<dynamic> _customPageRoute(Widget page) {
//   return PageRouteBuilder<dynamic>(
//     pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
//       return page;
//     },
//     transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
//       const Offset begin = Offset(1.0, 0.0);
//       const Offset end = Offset.zero;
//       const Curve curve = Curves.easeInOut;
//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//       var offsetAnimation = animation.drive(tween);

//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }

