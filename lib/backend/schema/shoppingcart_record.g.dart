// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoppingcart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShoppingcartRecord> _$shoppingcartRecordSerializer =
    new _$ShoppingcartRecordSerializer();

class _$ShoppingcartRecordSerializer
    implements StructuredSerializer<ShoppingcartRecord> {
  @override
  final Iterable<Type> types = const [ShoppingcartRecord, _$ShoppingcartRecord];
  @override
  final String wireName = 'ShoppingcartRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ShoppingcartRecord object,
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
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.shopname;
    if (value != null) {
      result
        ..add('shopname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.camera;
    if (value != null) {
      result
        ..add('camera')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.onprocess;
    if (value != null) {
      result
        ..add('onprocess')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schedule;
    if (value != null) {
      result
        ..add('schedule')
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
  ShoppingcartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShoppingcartRecordBuilder();

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
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'shopname':
          result.shopname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camera':
          result.camera = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'onprocess':
          result.onprocess = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'schedule':
          result.schedule = serializers.deserialize(value,
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

class _$ShoppingcartRecord extends ShoppingcartRecord {
  @override
  final String? name;
  @override
  final double? amount;
  @override
  final String? shopname;
  @override
  final String? camera;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final String? onprocess;
  @override
  final String? price;
  @override
  final String? schedule;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ShoppingcartRecord(
          [void Function(ShoppingcartRecordBuilder)? updates]) =>
      (new ShoppingcartRecordBuilder()..update(updates))._build();

  _$ShoppingcartRecord._(
      {this.name,
      this.amount,
      this.shopname,
      this.camera,
      this.createdAt,
      this.createdBy,
      this.onprocess,
      this.price,
      this.schedule,
      this.ffRef})
      : super._();

  @override
  ShoppingcartRecord rebuild(
          void Function(ShoppingcartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShoppingcartRecordBuilder toBuilder() =>
      new ShoppingcartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShoppingcartRecord &&
        name == other.name &&
        amount == other.amount &&
        shopname == other.shopname &&
        camera == other.camera &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy &&
        onprocess == other.onprocess &&
        price == other.price &&
        schedule == other.schedule &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, shopname.hashCode);
    _$hash = $jc(_$hash, camera.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, onprocess.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShoppingcartRecord')
          ..add('name', name)
          ..add('amount', amount)
          ..add('shopname', shopname)
          ..add('camera', camera)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy)
          ..add('onprocess', onprocess)
          ..add('price', price)
          ..add('schedule', schedule)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ShoppingcartRecordBuilder
    implements Builder<ShoppingcartRecord, ShoppingcartRecordBuilder> {
  _$ShoppingcartRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _shopname;
  String? get shopname => _$this._shopname;
  set shopname(String? shopname) => _$this._shopname = shopname;

  String? _camera;
  String? get camera => _$this._camera;
  set camera(String? camera) => _$this._camera = camera;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  String? _onprocess;
  String? get onprocess => _$this._onprocess;
  set onprocess(String? onprocess) => _$this._onprocess = onprocess;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ShoppingcartRecordBuilder() {
    ShoppingcartRecord._initializeBuilder(this);
  }

  ShoppingcartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _amount = $v.amount;
      _shopname = $v.shopname;
      _camera = $v.camera;
      _createdAt = $v.createdAt;
      _createdBy = $v.createdBy;
      _onprocess = $v.onprocess;
      _price = $v.price;
      _schedule = $v.schedule;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShoppingcartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShoppingcartRecord;
  }

  @override
  void update(void Function(ShoppingcartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShoppingcartRecord build() => _build();

  _$ShoppingcartRecord _build() {
    final _$result = _$v ??
        new _$ShoppingcartRecord._(
            name: name,
            amount: amount,
            shopname: shopname,
            camera: camera,
            createdAt: createdAt,
            createdBy: createdBy,
            onprocess: onprocess,
            price: price,
            schedule: schedule,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
