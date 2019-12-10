import 'package:flutter/material.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/core/router_utility.dart' as router;

void main() => runApp(DoctorDirectoryApp());

class DoctorDirectoryApp extends StatefulWidget {
  @override
  _DoctorDirectoryAppState createState() => _DoctorDirectoryAppState();
}

class _DoctorDirectoryAppState extends State<DoctorDirectoryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better doctor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Doctor Directory"),
        ),
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: FirstWidgetRoute,
    );
  }
}
