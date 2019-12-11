import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_network/constants/route_constants.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff6f7fb),
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
        body: renderNewScreen(context),
//        bottomNavigationBar: renderBottomNavigation(context),
      ),
    );
  }

  Widget renderNewScreen(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        renderSearchTop(context),
        renderCategories(),
        renderNearByLabels(),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return ListItem();
          }, childCount: 5),
        ),
      ],
    );
  }

  Widget renderBottomNavigation(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 38,
        showUnselectedLabels: true,
        unselectedItemColor: Color(0xffb1babe),
        selectedItemColor: Color(0xffb00020),
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: Container(
                height: 0,
              )),
          BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: Container(
                height: 0,
              )),
        ]);
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
                Navigator.of(context).pushNamed(FirstWidgetRoute);
              },
              child: Hero(
                tag: "search",
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 24, right: 24, top: 16, bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(24.0)),
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
            )
          ],
        ),
      ),
    );
  }

  renderCategories() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Container(
//            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Specialities",
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
          Container(
//            color: Colors.red,
            height: 120.0,
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                      // Box decoration takes a gradient
                      gradient: RadialGradient(
                        focal: Alignment.topLeft,
//                    radius: 8,
//                      focalRadius: 26,
                        // Where the linear gradient begins and ends
//                      begin: Alignment.bottomRight,
//                      end: Alignment.topLeft,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.4, 0.5, 0.9],
                        colors: [
                          Color(0xFFa39ed9),
                          Color(0xFF9794d2),
                          Color(0xFF8d88ce),
                          Color(0xFF8d89cc),
                        ],
                      )),
//                  margin: EdgeInsets.all(8),
                  height: 120,

//                    color: Colors.black,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit,
                          color: Colors.white,
                          size: 36,
                        ),
                        Text(
                          "Speciality 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
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

/*Widget renderDoctorsList() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
//                      color: Colors.red,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.filter_list)))
            ],
          ),
        ),
        Expanded(child: DoctorList())
      ],
    );
  }*/
}

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedList(
        initialItemCount: 20,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
              position: CurvedAnimation(
                curve: Curves.easeOut,
                parent: animation,
              ).drive((Tween<Offset>(
                begin: Offset(1, 0),
                end: Offset(0, 0),
              ))),
              child: ListItem());
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      margin: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
      elevation: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage('assets/images/doctor_avtar.png'))),
//            margin: EdgeInsets.all(5),
            width: 100,
            height: 100,
//                  color: Colors.black,
          ),
          Expanded(
            child: Container(
//              color: Colors.red,
              margin: EdgeInsets.only(top: 0, left: 16, right: 16),
              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Dr. Name Surname",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Address",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xffbac2c6),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Speciality",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xffbac2c6),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
