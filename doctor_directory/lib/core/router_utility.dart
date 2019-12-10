import 'package:flutter/material.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/ui/FirstWidget.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Root:
      return MaterialPageRoute(builder: (context) => FirstWidget());

      case FirstWidgetRoute:
      return MaterialPageRoute(builder: (context) => FirstWidget());

    default:
      return MaterialPageRoute(builder: (context) => FirstWidget());
  }
}
