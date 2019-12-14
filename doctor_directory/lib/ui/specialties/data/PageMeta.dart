import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_network/core/serializers.dart';

part 'PageMeta.g.dart';

/*
  1. Implement interface
  2. Define variables
  3. import part file of the same
  4. Factory
  5. flutter package pub run build_runner
 */
abstract class PageMeta implements Built<PageMeta, PageMetaBuilder> {

  int get total;

  int get count;

  int get skip;

  int get limit;

  PageMeta._();

  factory PageMeta([updates(PageMetaBuilder loginResponseBuilder)]) =
  _$PageMeta;

  String toJson() {
    return json.encode(serializers.serializeWith(PageMeta.serializer, this));
  }

  static PageMeta fromJson(String jsonString) {
    return serializers.deserializeWith(
        PageMeta.serializer, json.decode(jsonString));
  }

  static Serializer<PageMeta> get serializer => _$pageMetaSerializer;
}
