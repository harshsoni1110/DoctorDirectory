import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_network/ui/specialties/data/PageMeta.dart';
import 'package:flutter_network/ui/specialties/data/Speciality.dart';
import 'package:flutter_network/ui/specialties/data/Specialties.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Specialties,
  Speciality,
  PageMeta
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin( StandardJsonPlugin() )).build();
