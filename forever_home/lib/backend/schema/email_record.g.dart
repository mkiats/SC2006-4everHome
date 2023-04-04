// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmailRecord> _$emailRecordSerializer = new _$EmailRecordSerializer();

class _$EmailRecordSerializer implements StructuredSerializer<EmailRecord> {
  @override
  final Iterable<Type> types = const [EmailRecord, _$EmailRecord];
  @override
  final String wireName = 'EmailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.recipientAddress;
    if (value != null) {
      result
        ..add('recipientAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.senderAddress;
    if (value != null) {
      result
        ..add('senderAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  EmailRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'recipientAddress':
          result.recipientAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'senderAddress':
          result.senderAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$EmailRecord extends EmailRecord {
  @override
  final String? recipientAddress;
  @override
  final String? senderAddress;
  @override
  final String? subject;
  @override
  final String? message;
  @override
  final DateTime? dateTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmailRecord([void Function(EmailRecordBuilder)? updates]) =>
      (new EmailRecordBuilder()..update(updates))._build();

  _$EmailRecord._(
      {this.recipientAddress,
      this.senderAddress,
      this.subject,
      this.message,
      this.dateTime,
      this.ffRef})
      : super._();

  @override
  EmailRecord rebuild(void Function(EmailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailRecordBuilder toBuilder() => new EmailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailRecord &&
        recipientAddress == other.recipientAddress &&
        senderAddress == other.senderAddress &&
        subject == other.subject &&
        message == other.message &&
        dateTime == other.dateTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recipientAddress.hashCode);
    _$hash = $jc(_$hash, senderAddress.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailRecord')
          ..add('recipientAddress', recipientAddress)
          ..add('senderAddress', senderAddress)
          ..add('subject', subject)
          ..add('message', message)
          ..add('dateTime', dateTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmailRecordBuilder implements Builder<EmailRecord, EmailRecordBuilder> {
  _$EmailRecord? _$v;

  String? _recipientAddress;
  String? get recipientAddress => _$this._recipientAddress;
  set recipientAddress(String? recipientAddress) =>
      _$this._recipientAddress = recipientAddress;

  String? _senderAddress;
  String? get senderAddress => _$this._senderAddress;
  set senderAddress(String? senderAddress) =>
      _$this._senderAddress = senderAddress;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmailRecordBuilder() {
    EmailRecord._initializeBuilder(this);
  }

  EmailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipientAddress = $v.recipientAddress;
      _senderAddress = $v.senderAddress;
      _subject = $v.subject;
      _message = $v.message;
      _dateTime = $v.dateTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailRecord;
  }

  @override
  void update(void Function(EmailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailRecord build() => _build();

  _$EmailRecord _build() {
    final _$result = _$v ??
        new _$EmailRecord._(
            recipientAddress: recipientAddress,
            senderAddress: senderAddress,
            subject: subject,
            message: message,
            dateTime: dateTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
