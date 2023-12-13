import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NearByContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Your Nearest Contact Fetching '),
      content:SingleChildScrollView(
        child: Column(
          children: [
            Text('1. First Name: Pawan Kumar'),
            Text(' Number: 7764993094'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://7764993094'); // Replace '1234567890' with the actual phone number
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
            Text('2. First Name: Amaan Ansari'),
            Text(' Number: 9608810232'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://9608810232'); // Replace '1234567890' with the actual phone number
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
            Text('3. First Name: Jinny'),
            Text(' Number: 1234567890'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://7764993094'); // Replace '1234567890' with the actual phone number
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
            Text('4. First Name: Maan'),
            Text(' Number: 1234567890'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://9608810232'); // Replace '1234567890' with the actual phone number
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