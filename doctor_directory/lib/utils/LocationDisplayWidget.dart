import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationDisplayWidget extends StatefulWidget {
  @override
  _LocationDisplayWidgetState createState() => _LocationDisplayWidgetState();
}

class _LocationDisplayWidgetState extends State<LocationDisplayWidget> {
  String currentLocation = "Loading";

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async {
    try {
      var currentLatLong = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(
          currentLatLong.latitude, currentLatLong.longitude);
      setState(() {
        currentLocation =
            placemark[0].subLocality + ", " + placemark[0].locality;
      });
    } catch (e) {
      setState(() {
        currentLocation = "Permission required";
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getCurrentLocation();
      },
      child: Container(
        constraints: BoxConstraints(
            maxWidth: 200
        ),
//      color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.location_on),
            ),
            Container(
              child: Text(
                currentLocation,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
            Icon(Icons.arrow_drop_down),

          ],
        ),
      ),
    );
  }
}
