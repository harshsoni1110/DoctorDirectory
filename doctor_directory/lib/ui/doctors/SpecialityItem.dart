import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          // Box decoration takes a gradient
          gradient: RadialGradient(
            focal: Alignment.topLeft,
            stops: [0.1, 0.4, 0.5, 0.9],
            colors: [
              Color(0xFFa39ed9),
              Color(0xFF9794d2),
              Color(0xFF8d88ce),
              Color(0xFF8d89cc),
            ],
          )),
      height: 120,
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
  }
}