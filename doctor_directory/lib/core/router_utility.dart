import 'package:flutter/material.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/ui/FirstWidget.dart';
import 'package:flutter_network/ui/doctors/DoctorScreen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Root:
      return MaterialPageRoute(builder: (context) => FirstWidget());

    case FirstWidgetRoute:
      return MaterialPageRoute(builder: (context) => FirstWidget());

    case DoctorScreenRoute:
      return MaterialPageRoute(builder: (context) => DoctorScreen());

    default:
      return MaterialPageRoute(builder: (context) => FirstWidget());
  }
}
