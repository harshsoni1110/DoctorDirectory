import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_network/core/ConnectivityService.dart';
import 'package:get_version/get_version.dart';
import 'package:provider/provider.dart';

class NetworkAwareWidget extends StatefulWidget {
  final Widget child;
  static const platform = const MethodChannel("com.betterdoctor/settingsPanel");

  NetworkAwareWidget({this.child});

  @override
  _NetworkAwareWidgetState createState() => _NetworkAwareWidgetState();
}

class _NetworkAwareWidgetState extends State<NetworkAwareWidget> {
  //avoid unnecessary starting Settings action panel twice or more
  bool _isSettingDismissed = true;
  String platformVersion = "";

  ConnectivityService connectivityService;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    connectivityService = Provider.of<ConnectivityService>(context);
  }

  @override
  Widget build(BuildContext context) {
    if (connectivityService.currentConnection == ConnectivityStatus.Offline) {
      _handleNetworkState();
    }
    return widget.child;
  }

  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

  _handleNetworkState() async {
    if (Provider.of<ConnectivityService>(context).androidVersion == null) {
      connectivityService.androidVersion = await GetVersion.platformVersion;
    }

    if (Platform.isAndroid &&
        connectivityService.androidVersion == "Android 10") {
      NetworkAwareWidget.platform
          .setMethodCallHandler(_handleMessagesFromNative);
      if (_isSettingDismissed) {
        _openSettingsPanel();
      }
    }
  }

  _openSettingsPanel() async {
    setState(() {
      _isSettingDismissed = false;
    });

    try {
      await NetworkAwareWidget.platform.invokeMethod("openSettingsPanel");
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  Future _handleMessagesFromNative(MethodCall call) async {
    switch (call.method) {
      case "SettingsDismissed":
        _isSettingDismissed = true;
        break;
    }
  }
}
