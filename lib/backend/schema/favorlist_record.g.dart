// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorlist_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavorlistRecord> _$favorlistRecordSerializer =
    new _$FavorlistRecordSerializer();

class _$FavorlistRecordSerializer
    implements StructuredSerializer<FavorlistRecord> {
  @override
  final Iterable<Type> types = const [FavorlistRecord, _$FavorlistRecord];
  @override
  final String wireName = 'FavorlistRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FavorlistRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FavorlistRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavorlistRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FavorlistRecord extends FavorlistRecord {
  @override
  final String? name;
  @override
  final String? picture;
  @override
  final String? condition;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FavorlistRecord([void Function(FavorlistRecordBuilder)? updates]) =>
      (new FavorlistRecordBuilder()..update(updates))._build();

  _$FavorlistRecord._({this.name, this.picture, this.condition, this.ffRef})
      : super._();

  @override
  FavorlistRecord rebuild(void Function(FavorlistRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavorlistRecordBuilder toBuilder() =>
      new FavorlistRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavorlistRecord &&
        name == other.name &&
        picture == other.picture &&
        condition == other.condition &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FavorlistRecord')
          ..add('name', name)
          ..add('picture', picture)
          ..add('condition', condition)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FavorlistRecordBuilder
    implements Builder<FavorlistRecord, FavorlistRecordBuilder> {
  _$FavorlistRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FavorlistRecordBuilder() {
    FavorlistRecord._initializeBuilder(this);
  }

  FavorlistRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _picture = $v.picture;
      _condition = $v.condition;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavorlistRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavorlistRecord;
  }

  @override
  void update(void Function(FavorlistRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FavorlistRecord build() => _build();

  _$FavorlistRecord _build() {
    final _$result = _$v ??
        new _$FavorlistRecord._(
            name: name, picture: picture, condition: condition, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
