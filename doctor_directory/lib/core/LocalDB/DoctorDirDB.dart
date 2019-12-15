import 'package:flutter_network/ui/specialties/data/Speciality.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'DoctorDirDB.g.dart';

class SpecialityBookmark extends Table {
  TextColumn get uid => text().customConstraint('UNIQUE')();

  TextColumn get name => text()();
}

@UseMoor(tables: [SpecialityBookmark])
class DoctorDirDB extends _$DoctorDirDB {
  DoctorDirDB()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;

  Stream<List<SpecialityBookmarkData>> get getAllSpecialities =>
      select(specialityBookmark).watch();

  void bookmarkSpeciality(Speciality speciality) {
    var specialityBookMark =
        SpecialityBookmarkData(uid: speciality.uid, name: speciality.name);
    into(specialityBookmark).insert(specialityBookMark);
  }

  void removeBookmarkSpeciality(String id) =>
      (delete(specialityBookmark)..where((t) => t.uid.equals(id))).go();


  Stream<bool> isBookmarked(String id) {
     return (select(specialityBookmark)..where((speciality) => speciality.uid.equals(id)))
        .watch()
        .map((specialities) => specialities.length >= 1);
  }
}
