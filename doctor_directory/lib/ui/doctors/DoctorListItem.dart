import 'package:flutter/material.dart';

class DoctorListItem extends StatelessWidget {
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