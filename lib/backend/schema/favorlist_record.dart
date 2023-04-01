import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favorlist_record.g.dart';

abstract class FavorlistRecord
    implements Built<FavorlistRecord, FavorlistRecordBuilder> {
  static Serializer<FavorlistRecord> get serializer =>
      _$favorlistRecordSerializer;

  String? get name;

  String? get picture;

  String? get condition;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FavorlistRecordBuilder builder) => builder
    ..name = ''
    ..picture = ''
    ..condition = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorlist');

  static Stream<FavorlistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FavorlistRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FavorlistRecord._();
  factory FavorlistRecord([void Function(FavorlistRecordBuilder) updates]) =
      _$FavorlistRecord;

  static FavorlistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFavorlistRecordData({
  String? name,
  String? picture,
  String? condition,
}) {
  final firestoreData = serializers.toFirestore(
    FavorlistRecord.serializer,
    FavorlistRecord(
      (f) => f
        ..name = name
        ..picture = picture
        ..condition = condition,
    ),
  );

  return firestoreData;
}
