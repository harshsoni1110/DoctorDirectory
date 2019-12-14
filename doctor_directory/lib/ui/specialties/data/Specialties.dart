import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_network/core/serializers.dart';
import 'package:flutter_network/ui/specialties/data/Speciality.dart';

part 'Specialties.g.dart';

/*
  1. Implement interface
  2. Define variables
  3. import part file of the same
  4. Factory
  5. flutter package pub run build_runner
 */
abstract class Specialties implements Built<Specialties, SpecialtiesBuilder> {

  BuiltList<Speciality> get data;
  Specialties._();

  factory Specialties([updates(SpecialtiesBuilder loginResponseBuilder)]) =
      _$Specialties;

  String toJson() {
    return json.encode(serializers.serializeWith(Specialties.serializer, this));
  }

  static Specialties fromJson(String jsonString) {
    return serializers.deserializeWith(
        Specialties.serializer, json.decode(jsonString));
  }

  static Serializer<Specialties> get serializer => _$specialtiesSerializer;
}
