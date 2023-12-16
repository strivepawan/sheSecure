import 'package:flutter/material.dart';

class AuthorityResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         const Text(
            'Authority feedback',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          const Text("No data Found"),
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
