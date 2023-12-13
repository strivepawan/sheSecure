import 'package:flutter/material.dart';
import 'package:shesecure/HomeScreen/homescreen.dart';
import 'package:shesecure/SOS_Screen/Emergancy_Contact/relative_contact.dart';
import 'package:shesecure/SOS_Screen/Location_share/location_share.dart';
import 'package:shesecure/SOS_Screen/NearByContact/near_by_contact.dart';
import 'package:shesecure/SOS_Screen/SOS_Circle_Screen/sos_screen.dart';
// import 'package:url_launcher/url_launcher.dart';

class SOSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOS Screen'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: Text(
                    'Fetching Nearby Users for help...',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                SOSCircle(),
                SizedBox(height: 16),
                AbortButton(),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: ContactIcons(),
          ),
        ],
      ),
    );
  }
}

class AbortButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
                context: context,
                builder: (context) => HomeScreen(),
              );
      },
      child: Text('Abort'),
    );
  }
}

class ContactIcons extends StatelessWidget {
  void _showPopup(BuildContext context, Widget buttonWidget){
    showModalBottomSheet(context: context,
     builder: (BuildContext context) {
       return buttonWidget;
     },
     );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              _showPopup(context, PersonalContactDialog());
              // showDialog(
              //   context: context,
              //   builder: (context) => PersonalContactDialog(),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person,
              size: 50,),
              
            ),
          ),
          InkWell(
            onTap: () {
              _showPopup(context, NearByContact());
              // showDialog(
              //   context: context,
              //   builder: (context) => NearByContact(),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phone,
              size: 50,),
            ),
          ),
          InkWell(
            onTap: () {
              _showPopup(context, LocationSharingScreen());
              // showDialog(
              //   context: context,
              //   builder: (context) => LocationSharingScreen(),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.near_me,
              size: 52,),
            ),
          ),
        ],
      ),
    );
  }
}
