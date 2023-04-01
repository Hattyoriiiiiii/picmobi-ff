import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chatgpttest_record.g.dart';

abstract class ChatgpttestRecord
    implements Built<ChatgpttestRecord, ChatgpttestRecordBuilder> {
  static Serializer<ChatgpttestRecord> get serializer =>
      _$chatgpttestRecordSerializer;

  String? get callscript;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatgpttestRecordBuilder builder) =>
      builder..callscript = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatgpttest');

  static Stream<ChatgpttestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatgpttestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatgpttestRecord._();
  factory ChatgpttestRecord([void Function(ChatgpttestRecordBuilder) updates]) =
      _$ChatgpttestRecord;

  static ChatgpttestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatgpttestRecordData({
  String? callscript,
}) {
  final firestoreData = serializers.toFirestore(
    ChatgpttestRecord.serializer,
    ChatgpttestRecord(
      (c) => c..callscript = callscript,
    ),
  );

  return firestoreData;
}
