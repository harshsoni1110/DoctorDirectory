// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PageMeta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageMeta> _$pageMetaSerializer = new _$PageMetaSerializer();

class _$PageMetaSerializer implements StructuredSerializer<PageMeta> {
  @override
  final Iterable<Type> types = const [PageMeta, _$PageMeta];
  @override
  final String wireName = 'PageMeta';

  @override
  Iterable<Object> serialize(Serializers serializers, PageMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PageMeta deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PageMeta extends PageMeta {
  @override
  final int total;
  @override
  final int count;
  @override
  final int skip;
  @override
  final int limit;

  factory _$PageMeta([void Function(PageMetaBuilder) updates]) =>
      (new PageMetaBuilder()..update(updates)).build();

  _$PageMeta._({this.total, this.count, this.skip, this.limit}) : super._() {
    if (total == null) {
      throw new BuiltValueNullFieldError('PageMeta', 'total');
    }
    if (count == null) {
      throw new BuiltValueNullFieldError('PageMeta', 'count');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('PageMeta', 'skip');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('PageMeta', 'limit');
    }
  }

  @override
  PageMeta rebuild(void Function(PageMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageMetaBuilder toBuilder() => new PageMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageMeta &&
        total == other.total &&
        count == other.count &&
        skip == other.skip &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, total.hashCode), count.hashCode), skip.hashCode),
        limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageMeta')
          ..add('total', total)
          ..add('count', count)
          ..add('skip', skip)
          ..add('limit', limit))
        .toString();
  }
}

class PageMetaBuilder implements Builder<PageMeta, PageMetaBuilder> {
  _$PageMeta _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _skip;
  int get skip => _$this._skip;
  set skip(int skip) => _$this._skip = skip;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  PageMetaBuilder();

  PageMetaBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _count = _$v.count;
      _skip = _$v.skip;
      _limit = _$v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageMeta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageMeta;
  }

  @override
  void update(void Function(PageMetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageMeta build() {
    final _$result = _$v ??
        new _$PageMeta._(total: total, count: count, skip: skip, limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
