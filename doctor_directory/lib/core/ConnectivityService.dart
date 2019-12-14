import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

enum ConnectivityStatus { WiFi, Cellular, Offline }

class ConnectivityService extends ChangeNotifier {

  String androidVersion;
  ConnectivityStatus currentConnection;

  ConnectivityService() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      currentConnection = _getStatusFromResult(result);
      notifyListeners();
    });
  }


  ConnectivityStatus _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.Cellular;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.WiFi;
      case ConnectivityResult.none:
        return ConnectivityStatus.Offline;
      default:
        return ConnectivityStatus.Offline;
    }
  }
}
