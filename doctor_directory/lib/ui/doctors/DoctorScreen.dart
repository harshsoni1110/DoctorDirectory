import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Doctors",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
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
        ),
        bottomNavigationBar: renderBottomNavigation(context),
      ),
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
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          new NetworkImage("https://i.imgur.com/BoN9kdC.png"))),
              margin: EdgeInsets.all(5),
              width: 80,
              height: 80,
//                  color: Colors.black,
            ),
            Expanded(
              child: Container(
//                        color: Colors.red,
                margin: EdgeInsets.only(top: 12, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Dr. Name Surname",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
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
      ),
    );
  }
}
