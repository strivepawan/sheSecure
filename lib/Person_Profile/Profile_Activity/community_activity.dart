import 'package:flutter/material.dart';

class CommunityActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Your latest Community Activity',
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 127, 165, 231),
                 borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                          children: [
                           
                SizedBox(width:16),
                Icon(Icons.group, size: 40),
                 SizedBox(width: 4,),
                Column(
                          children: [
                            SizedBox(height: 4,),
                Text("Stakling with reported ",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("11 Dec ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                    Text("8 Am",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 32,),
                  ],
                ),
                          ],
                          
                        ),
                          ],
                        ),
              ),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 127, 165, 231),
                 borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                          children: [
                           
                SizedBox(width:16),
                Icon(Icons.shield_moon, size: 40),
                 SizedBox(width: 4,),
                Column(
                          children: [
                            SizedBox(height: 4,),
                Text("Privately Reported ",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("11 Dec ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("8 Am",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 32,),
                  ],
                ),
                          ],
                          
                        ),
                          ],
                        ),
              ),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 127, 165, 231),
                 borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                          children: [
                           
                SizedBox(width:16),
                Icon(Icons.group, size: 40),
                 SizedBox(width: 4,),
                Column(
                          children: [
                            SizedBox(height: 4,),
                Text("Strangers Message",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("11 Dec ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("8 Am",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 32,),
                  ],
                ),
                          ],
                          
                        ),
                          ],
                        ),
              ),
              SizedBox(height: 16,),
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
