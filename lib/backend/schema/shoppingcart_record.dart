import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'shoppingcart_record.g.dart';

abstract class ShoppingcartRecord
    implements Built<ShoppingcartRecord, ShoppingcartRecordBuilder> {
  static Serializer<ShoppingcartRecord> get serializer =>
      _$shoppingcartRecordSerializer;

  String? get name;

  double? get amount;

  String? get shopname;

  String? get camera;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  String? get onprocess;

  String? get price;

  String? get schedule;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ShoppingcartRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..shopname = ''
    ..camera = ''
    ..onprocess = ''
    ..price = ''
    ..schedule = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shoppingcart');

  static Stream<ShoppingcartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ShoppingcartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ShoppingcartRecord._();
  factory ShoppingcartRecord(
          [void Function(ShoppingcartRecordBuilder) updates]) =
      _$ShoppingcartRecord;

  static ShoppingcartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createShoppingcartRecordData({
  String? name,
  double? amount,
  String? shopname,
  String? camera,
  DateTime? createdAt,
  DocumentReference? createdBy,
  String? onprocess,
  String? price,
  String? schedule,
}) {
  final firestoreData = serializers.toFirestore(
    ShoppingcartRecord.serializer,
    ShoppingcartRecord(
      (s) => s
        ..name = name
        ..amount = amount
        ..shopname = shopname
        ..camera = camera
        ..createdAt = createdAt
        ..createdBy = createdBy
        ..onprocess = onprocess
        ..price = price
        ..schedule = schedule,
    ),
  );

  return firestoreData;
}
