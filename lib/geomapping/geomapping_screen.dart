import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Geomapping_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("GeoMapping",style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.black
        ),),
        backgroundColor:const Color(0xff96a0ff),
      ),
      body: Center(
        child: PhotoView(
          imageProvider:const AssetImage('assets/img_group64.png'), 
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}