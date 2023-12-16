import 'package:flutter/material.dart';
class SOSCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration:const  BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(243, 243, 47, 33),
      ),
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration:const  BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 243, 33, 33),
              ),
              child:const  Center(
                child: Text(
                  'SOS',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}