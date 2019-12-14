// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Specialties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Specialties> _$specialtiesSerializer = new _$SpecialtiesSerializer();

class _$SpecialtiesSerializer implements StructuredSerializer<Specialties> {
  @override
  final Iterable<Type> types = const [Specialties, _$Specialties];
  @override
  final String wireName = 'Specialties';

  @override
  Iterable<Object> serialize(Serializers serializers, Specialties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Speciality)])),
    ];

    return result;
  }

  @override
  Specialties deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpecialtiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Speciality)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Specialties extends Specialties {
  @override
  final BuiltList<Speciality> data;

  factory _$Specialties([void Function(SpecialtiesBuilder) updates]) =>
      (new SpecialtiesBuilder()..update(updates)).build();

  _$Specialties._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Specialties', 'data');
    }
  }

  @override
  Specialties rebuild(void Function(SpecialtiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialtiesBuilder toBuilder() => new SpecialtiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Specialties && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Specialties')..add('data', data))
        .toString();
  }
}

class SpecialtiesBuilder implements Builder<Specialties, SpecialtiesBuilder> {
  _$Specialties _$v;

  ListBuilder<Speciality> _data;
  ListBuilder<Speciality> get data =>
      _$this._data ??= new ListBuilder<Speciality>();
  set data(ListBuilder<Speciality> data) => _$this._data = data;

  SpecialtiesBuilder();

  SpecialtiesBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Specialties other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Specialties;
  }

  @override
  void update(void Function(SpecialtiesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Specialties build() {
    _$Specialties _$result;
    try {
      _$result = _$v ?? new _$Specialties._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Specialties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
