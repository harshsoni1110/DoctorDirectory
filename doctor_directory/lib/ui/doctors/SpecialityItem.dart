import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/core/LocalDB/DoctorDirDB.dart';

class SpecialityItem extends StatelessWidget {
  final SpecialityBookmarkData speciality;

  SpecialityItem({this.speciality});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.blue,
      margin: EdgeInsets.all(8),
      constraints: BoxConstraints(maxWidth: 100, maxHeight: 120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // Box decoration takes a gradient
//        color: Color(0xFFa39ed9),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
            stops: [0.1, 0.3, 0.5, 1],
            colors: [
              Color(0xFFa39ed9),
              Color(0xFF9794d2),
              Color(0xFF8d88ce),
              Color(0xFF8d89cc),
            ],
          )
      ),
      height: 120,
      width: 120,
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 36,
            ),
            Text(
              speciality.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
