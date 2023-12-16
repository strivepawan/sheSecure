import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalContactDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:const  Text('Personal Contact'),
      content:SingleChildScrollView(
        child: Column(
          children: [
           const  Text('1. First Name: Pawan Kumar'),
           const  Text(' Number: 7764993094'),
          const   SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://7764993094'); // Replace '1234567890' with the actual phone number
              },
              child:const  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 8),
                  Text('Call'),
                  
                ],
              ),
            ),
          const   Text('2. First Name: Amaan Ansari'),
            const Text(' Number: 9608810232'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://9608810232'); // Replace '1234567890' with the actual phone number
              },
              child:const  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 8),
                  Text('Call'),
                  
                ],
              ),
            ),
          const   Text('3. First Name: Jinny'),
          const   Text(' Number: 1234567890'),
           const  SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://7764993094'); // Replace '1234567890' with the actual phone number
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 8),
                  Text('Call'),
                  
                ],
              ),
            ),
           const  Text('4. First Name: Maan'),
            const Text(' Number: 1234567890'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                launch('tel://9608810232'); // Replace '1234567890' with the actual phone number
              },
              child:const  Row(
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
          child:const  Text('Close'),
        ),
      ],
    );
  }
}