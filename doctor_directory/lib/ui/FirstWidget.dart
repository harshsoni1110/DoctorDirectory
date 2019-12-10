import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/core/NetworkService.dart';

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Response>(
        future: NetworkService.create().getSpecialties("YOUR KEY"),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.data.toString());
          } else if (snapshot.hasData) {
            return Text(snapshot.data.body.toString());
          }
          return (Text("Loading"));
        },
      ),
    );
  }
}