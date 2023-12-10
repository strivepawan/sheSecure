import 'package:flutter/material.dart';

class Community_Chat_Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community Chat Box"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 3, // 75% of the width
              child: TextField(
                decoration: InputDecoration(labelText: 'Enter your text'),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1, // 12.5% of the width
              child: ElevatedButton.icon(
                onPressed: () {
                  // Implement file/document selection logic
                },
                icon: Icon(Icons.attach_file),
                label: Text(''),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1, // 12.5% of the width
              child: ElevatedButton.icon(
                onPressed: () {
                  // Implement submit logic
                },
                icon: Icon(Icons.done_all),
                label: Text(""),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
