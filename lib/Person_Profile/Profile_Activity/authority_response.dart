import 'package:flutter/material.dart';

class AuthorityResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Authority feedback',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text("No data Found"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
