import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share/share.dart';

class LocationSharingScreen extends StatefulWidget {
  @override
  _LocationSharingScreenState createState() => _LocationSharingScreenState();
}

class _LocationSharingScreenState extends State<LocationSharingScreen> {
  String _location = 'Fetching location...';

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        _location = 'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
      });
    } catch (e) {
      setState(() {
        _location = 'Error getting location';
      });
      print(e.toString());
    }
  }

  void _shareLocation() {
    String shareText = 'Check out my current location: $_location';
    Share.share(shareText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Sharing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, size: 80),
           const  SizedBox(height: 16),
            Text(
              _location,
              style: TextStyle(fontSize: 16),
            ),
           const  SizedBox(height: 16),
            ElevatedButton(
              onPressed: _shareLocation,
              child: Text('Share Location'),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// class LocationSharingScreen extends StatefulWidget {
//   @override
//   _LocationSharingScreenState createState() => _LocationSharingScreenState();
// }

// class _LocationSharingScreenState extends State<LocationSharingScreen> {
//   String _location = 'Fetching location...';

//   @override
//   void initState() {
//     super.initState();
//     _getLocation();
//   }

//   Future<void> _getLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );

//       setState(() {
//         _location = 'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
//       });
//     } catch (e) {
//       setState(() {
//         _location = 'Error getting location';
//       });
//       print(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Location Sharing'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.location_on, size: 80),
//             SizedBox(height: 16),
//             Text(
//               _location,
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
