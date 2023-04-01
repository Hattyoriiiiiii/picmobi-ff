// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatgpttest_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatgpttestRecord> _$chatgpttestRecordSerializer =
    new _$ChatgpttestRecordSerializer();

class _$ChatgpttestRecordSerializer
    implements StructuredSerializer<ChatgpttestRecord> {
  @override
  final Iterable<Type> types = const [ChatgpttestRecord, _$ChatgpttestRecord];
  @override
  final String wireName = 'ChatgpttestRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatgpttestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.callscript;
    if (value != null) {
      result
        ..add('callscript')
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
  ChatgpttestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatgpttestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'callscript':
          result.callscript = serializers.deserialize(value,
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

class _$ChatgpttestRecord extends ChatgpttestRecord {
  @override
  final String? callscript;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatgpttestRecord(
          [void Function(ChatgpttestRecordBuilder)? updates]) =>
      (new ChatgpttestRecordBuilder()..update(updates))._build();

  _$ChatgpttestRecord._({this.callscript, this.ffRef}) : super._();

  @override
  ChatgpttestRecord rebuild(void Function(ChatgpttestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatgpttestRecordBuilder toBuilder() =>
      new ChatgpttestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatgpttestRecord &&
        callscript == other.callscript &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, callscript.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatgpttestRecord')
          ..add('callscript', callscript)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatgpttestRecordBuilder
    implements Builder<ChatgpttestRecord, ChatgpttestRecordBuilder> {
  _$ChatgpttestRecord? _$v;

  String? _callscript;
  String? get callscript => _$this._callscript;
  set callscript(String? callscript) => _$this._callscript = callscript;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatgpttestRecordBuilder() {
    ChatgpttestRecord._initializeBuilder(this);
  }

  ChatgpttestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _callscript = $v.callscript;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatgpttestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatgpttestRecord;
  }

  @override
  void update(void Function(ChatgpttestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatgpttestRecord build() => _build();

  _$ChatgpttestRecord _build() {
    final _$result =
        _$v ?? new _$ChatgpttestRecord._(callscript: callscript, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
