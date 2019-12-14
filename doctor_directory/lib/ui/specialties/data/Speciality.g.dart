// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Speciality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Speciality> _$specialitySerializer = new _$SpecialitySerializer();

class _$SpecialitySerializer implements StructuredSerializer<Speciality> {
  @override
  final Iterable<Type> types = const [Speciality, _$Speciality];
  @override
  final String wireName = 'Speciality';

  @override
  Iterable<Object> serialize(Serializers serializers, Speciality object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Speciality deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpecialityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Speciality extends Speciality {
  @override
  final String uid;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;

  factory _$Speciality([void Function(SpecialityBuilder) updates]) =>
      (new SpecialityBuilder()..update(updates)).build();

  _$Speciality._({this.uid, this.name, this.description, this.category})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('Speciality', 'uid');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Speciality', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Speciality', 'description');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Speciality', 'category');
    }
  }

  @override
  Speciality rebuild(void Function(SpecialityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialityBuilder toBuilder() => new SpecialityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Speciality &&
        uid == other.uid &&
        name == other.name &&
        description == other.description &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), name.hashCode), description.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Speciality')
          ..add('uid', uid)
          ..add('name', name)
          ..add('description', description)
          ..add('category', category))
        .toString();
  }
}

class SpecialityBuilder implements Builder<Speciality, SpecialityBuilder> {
  _$Speciality _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  SpecialityBuilder();

  SpecialityBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _name = _$v.name;
      _description = _$v.description;
      _category = _$v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Speciality other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Speciality;
  }

  @override
  void update(void Function(SpecialityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Speciality build() {
    final _$result = _$v ??
        new _$Speciality._(
            uid: uid, name: name, description: description, category: category);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
