import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_network/core/serializers.dart';

part 'Speciality.g.dart';

/*
  1. Implement interface
  2. Define variables
  3. import part file of the same
  4. Factory
  5. flutter package pub run build_runner
 */
abstract class Speciality implements Built<Speciality, SpecialityBuilder> {
  String get uid;

  String get name;

  String get description;

  String get category;

  Speciality._();

  factory Speciality([updates(SpecialityBuilder loginResponseBuilder)]) =
  _$Speciality;

  String toJson() {
    return json.encode(serializers.serializeWith(Speciality.serializer, this));
  }

  static Speciality fromJson(String jsonString) {
    return serializers.deserializeWith(
        Speciality.serializer, json.decode(jsonString));
  }

  static Serializer<Speciality> get serializer => _$specialitySerializer;
}
