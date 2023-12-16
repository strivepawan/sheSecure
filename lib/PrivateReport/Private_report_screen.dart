 

import 'package:flutter/material.dart';

class Private_Report_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Private Reporting", style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.black
        ),),
        backgroundColor: Color(0xff96a0ff),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // First Row
             const  Text('Report Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              
              // Second Row
              Container(
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const  TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Enter details here',
                    border: InputBorder.none,
                  ),
                ),
              ),
             const  SizedBox(height: 16),
      
              // Third Row
             const  Text('Location of Misbehave', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
      
              // Fourth Row
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const  TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Enter location details here',
                    border: InputBorder.none,
                  ),
                ),
              ),
             const  SizedBox(height: 16),
      
              // Fifth Row
             const  Text('Person Identification', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             const  SizedBox(height: 8),
      
              // Sixth Row
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const  TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Enter identification details here',
                    border: InputBorder.none,
                  ),
                ),
              ),
            const   SizedBox(height: 16),
      
              // Seventh Row
             const  Text('Supporting Document', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             const  SizedBox(height: 8),
      
              // Eighth Row
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Attach Document',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add logic for adding documents
                        },
                        child: Icon(Icons.add),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             const  SizedBox(height: 16),
      
              // Ninth Row
              ElevatedButton(
                onPressed: () {
                  // Add logic for submitting the report
                },
                child: Text('Submit Report'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
