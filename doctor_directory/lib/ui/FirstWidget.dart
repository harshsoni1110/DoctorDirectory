import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/core/NetworkService.dart';

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: <Widget>[
            Text(
              "Kalyninagar, Pune",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        elevation: 0,
      ),
      body: Hero(
        tag: "search",
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
//            margin: const EdgeInsets.only(
//                left: 24, right: 24, top: 26, bottom: 16),
            decoration: BoxDecoration(
              borderRadius:
              new BorderRadius.all(new Radius.circular(0.0)),
              color: Color(0xfff6f7fb),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8, right: 8, top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 8, right: 4),
                      child: Icon(Icons.search)),
                  Container(
                      margin: EdgeInsets.only(left: 4, right: 8),
                      child: Text(
                        "Search doctor",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffb0b3be),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  futures() {
    return FutureBuilder<Response>(
      future: NetworkService.create().getSpecialties("YOUR KEY"),
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.data.toString());
        } else if (snapshot.hasData) {
          return Text(snapshot.data.body.toString());
        }
        return (Text("Loading"));
      },
    );
  }
}