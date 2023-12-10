import 'package:flutter/material.dart';
import 'package:shesecure/SOS_Screen/SOS_Circle_Screen/sos_screen.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // Add logic for abort button
      },
      child: Text('Abort'),
    );
  }
}

class ContactIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => PersonalContactDialog(),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap: () {
              // Add logic for telephone icon
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phone),
            ),
          ),
          InkWell(
            onTap: () {
              // Add logic for nearby contacts icon
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.near_me),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalContactDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Personal Contact'),
      content: Column(
        children: [
          Text('1. First Name: John'),
          Text('2. Number: 123-456-7890'),
          Text('3. Number: 987-654-3210'),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              launch('tel://1234567890'); // Replace '1234567890' with the actual phone number
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call),
                SizedBox(width: 8),
                Text('Call'),
                
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
