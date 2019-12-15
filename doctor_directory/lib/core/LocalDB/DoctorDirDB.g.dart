// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DoctorDirDB.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SpecialityBookmarkData extends DataClass
    implements Insertable<SpecialityBookmarkData> {
  final String uid;
  final String name;
  SpecialityBookmarkData({@required this.uid, @required this.name});
  factory SpecialityBookmarkData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return SpecialityBookmarkData(
      uid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uid']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory SpecialityBookmarkData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return SpecialityBookmarkData(
      uid: serializer.fromJson<String>(json['uid']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'uid': serializer.toJson<String>(uid),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  SpecialityBookmarkCompanion createCompanion(bool nullToAbsent) {
    return SpecialityBookmarkCompanion(
      uid: uid == null && nullToAbsent ? const Value.absent() : Value(uid),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  SpecialityBookmarkData copyWith({String uid, String name}) =>
      SpecialityBookmarkData(
        uid: uid ?? this.uid,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('SpecialityBookmarkData(')
          ..write('uid: $uid, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(uid.hashCode, name.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is SpecialityBookmarkData &&
          other.uid == this.uid &&
          other.name == this.name);
}

class SpecialityBookmarkCompanion
    extends UpdateCompanion<SpecialityBookmarkData> {
  final Value<String> uid;
  final Value<String> name;
  const SpecialityBookmarkCompanion({
    this.uid = const Value.absent(),
    this.name = const Value.absent(),
  });
  SpecialityBookmarkCompanion.insert({
    @required String uid,
    @required String name,
  })  : uid = Value(uid),
        name = Value(name);
  SpecialityBookmarkCompanion copyWith(
      {Value<String> uid, Value<String> name}) {
    return SpecialityBookmarkCompanion(
      uid: uid ?? this.uid,
      name: name ?? this.name,
    );
  }
}

class $SpecialityBookmarkTable extends SpecialityBookmark
    with TableInfo<$SpecialityBookmarkTable, SpecialityBookmarkData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SpecialityBookmarkTable(this._db, [this._alias]);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  GeneratedTextColumn _uid;
  @override
  GeneratedTextColumn get uid => _uid ??= _constructUid();
  GeneratedTextColumn _constructUid() {
    return GeneratedTextColumn('uid', $tableName, false,
        $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [uid, name];
  @override
  $SpecialityBookmarkTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'speciality_bookmark';
  @override
  final String actualTableName = 'speciality_bookmark';
  @override
  VerificationContext validateIntegrity(SpecialityBookmarkCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uid.present) {
      context.handle(_uidMeta, uid.isAcceptableValue(d.uid.value, _uidMeta));
    } else if (uid.isRequired && isInserting) {
      context.missing(_uidMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SpecialityBookmarkData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SpecialityBookmarkData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SpecialityBookmarkCompanion d) {
    final map = <String, Variable>{};
    if (d.uid.present) {
      map['uid'] = Variable<String, StringType>(d.uid.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $SpecialityBookmarkTable createAlias(String alias) {
    return $SpecialityBookmarkTable(_db, alias);
  }
}

abstract class _$DoctorDirDB extends GeneratedDatabase {
  _$DoctorDirDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $SpecialityBookmarkTable _specialityBookmark;
  $SpecialityBookmarkTable get specialityBookmark =>
      _specialityBookmark ??= $SpecialityBookmarkTable(this);
  @override
  List<TableInfo> get allTables => [specialityBookmark];
}
