import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/core/LocalDB/DoctorDirDB.dart';
import 'package:flutter_network/ui/specialties/data/Speciality.dart';
import 'package:provider/provider.dart';

class SpecialityListItem extends StatelessWidget {
  final Speciality speciality;

  SpecialityListItem({this.speciality});

  @override
  Widget build(BuildContext context) {
    var db = Provider.of<DoctorDirDB>(context);
    return Card(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
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
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 36,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    speciality.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            StreamBuilder<bool>(
              stream: db.isBookmarked(speciality.uid),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data) {
                  return IconButton(
                      icon: Icon(Icons.bookmark, color: Theme.of(context).primaryColor,),
                      onPressed: () => db.removeBookmarkSpeciality(speciality.uid));
                }
                return IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () => db.bookmarkSpeciality(speciality));

              },
            )
          ],
        ),
      ),
    );
  }
}
