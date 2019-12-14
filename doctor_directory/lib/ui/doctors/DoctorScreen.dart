import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_network/constants/route_constants.dart';
import 'package:flutter_network/core/ConnectivityService.dart';
import 'package:flutter_network/ui/doctors/DoctorListItem.dart';
import 'package:flutter_network/ui/doctors/SpecialityItem.dart';
import 'package:provider/provider.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff6f7fb),
        appBar: renderAppBar(),
        body: renderNewScreen(context),
      ),
    );
  }

  Widget renderAppBar() {
    return AppBar(
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
    );
  }

  Widget renderNewScreen(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        renderSearchTop(context),
        renderSpecialities(context),
        renderNearByLabels(),
        renderDoctorsList(),
      ],
    );
  }

  renderSearchTop(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(36),
              bottomLeft: Radius.circular(36)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//                  color: Colors.red,
              margin: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Find your",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.0,
                        wordSpacing: 0.0),
                  ),
                  Text(
                    "Doctor",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(SearchWidgetRoute);
              },
              child: Hero(
                tag: "search",
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 24, right: 24, top: 16, bottom: 16),
                  child: Card(
                    elevation: 0,
                    color: Color(0xfff6f7fb),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: TextField(
                        enabled: false,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),

                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a search term',
                            hintStyle: TextStyle(color: Color(0xffb7b8bc))),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  renderSpecialityLabels(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Specialities",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        InkWell(
          onTap: () {
            if (Provider.of<ConnectivityService>(context).currentConnection != ConnectivityStatus.Offline) {
              Navigator.of(context).pushNamed(SpecialtiesListRoute);
            }
          },
          child: Text(
            "View all",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xffb0b3be),
            ),
          ),
        )
      ],
    );
  }

  renderSpecialities(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Container(
//            color: Colors.yellow,
            child: renderSpecialityLabels(context),
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
          ),
          Container(
            height: 120.0,
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(SearchWidgetRoute,
                          arguments: "Category$index");
                    },
                    child: SpecialityItem());
              },
            ),
          ),
        ],
      ),
    );
  }

  renderNearByLabels() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Container(
//            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Nearby doctors",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffb0b3be),
                  ),
                )
              ],
            ),
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
          ),
        ],
      ),
    );
  }

  renderDoctorsList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return DoctorListItem();
        },
        childCount: 5,
      ),
    );
  }


}
