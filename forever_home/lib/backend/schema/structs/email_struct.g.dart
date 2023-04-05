// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmailStruct> _$emailStructSerializer = new _$EmailStructSerializer();

class _$EmailStructSerializer implements StructuredSerializer<EmailStruct> {
  @override
  final Iterable<Type> types = const [EmailStruct, _$EmailStruct];
  @override
  final String wireName = 'EmailStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmailStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
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
    return result;
  }

  @override
  EmailStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmailStructBuilder();

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
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$EmailStruct extends EmailStruct {
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
  final FirestoreUtilData firestoreUtilData;

  factory _$EmailStruct([void Function(EmailStructBuilder)? updates]) =>
      (new EmailStructBuilder()..update(updates))._build();

  _$EmailStruct._(
      {this.recipientAddress,
      this.senderAddress,
      this.subject,
      this.message,
      this.dateTime,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'EmailStruct', 'firestoreUtilData');
  }

  @override
  EmailStruct rebuild(void Function(EmailStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailStructBuilder toBuilder() => new EmailStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailStruct &&
        recipientAddress == other.recipientAddress &&
        senderAddress == other.senderAddress &&
        subject == other.subject &&
        message == other.message &&
        dateTime == other.dateTime &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recipientAddress.hashCode);
    _$hash = $jc(_$hash, senderAddress.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailStruct')
          ..add('recipientAddress', recipientAddress)
          ..add('senderAddress', senderAddress)
          ..add('subject', subject)
          ..add('message', message)
          ..add('dateTime', dateTime)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class EmailStructBuilder implements Builder<EmailStruct, EmailStructBuilder> {
  _$EmailStruct? _$v;

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

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  EmailStructBuilder() {
    EmailStruct._initializeBuilder(this);
  }

  EmailStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipientAddress = $v.recipientAddress;
      _senderAddress = $v.senderAddress;
      _subject = $v.subject;
      _message = $v.message;
      _dateTime = $v.dateTime;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailStruct;
  }

  @override
  void update(void Function(EmailStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailStruct build() => _build();

  _$EmailStruct _build() {
    final _$result = _$v ??
        new _$EmailStruct._(
            recipientAddress: recipientAddress,
            senderAddress: senderAddress,
            subject: subject,
            message: message,
            dateTime: dateTime,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'EmailStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
