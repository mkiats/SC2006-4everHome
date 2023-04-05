// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_application_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanApplicationRecord> _$loanApplicationRecordSerializer =
    new _$LoanApplicationRecordSerializer();

class _$LoanApplicationRecordSerializer
    implements StructuredSerializer<LoanApplicationRecord> {
  @override
  final Iterable<Type> types = const [
    LoanApplicationRecord,
    _$LoanApplicationRecord
  ];
  @override
  final String wireName = 'LoanApplicationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LoanApplicationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.loanAgentID;
    if (value != null) {
      result
        ..add('loanAgentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.loanID;
    if (value != null) {
      result
        ..add('loanID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  LoanApplicationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanApplicationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'loanAgentID':
          result.loanAgentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'loanID':
          result.loanID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$LoanApplicationRecord extends LoanApplicationRecord {
  @override
  final String? loanAgentID;
  @override
  final int? id;
  @override
  final int? loanID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanApplicationRecord(
          [void Function(LoanApplicationRecordBuilder)? updates]) =>
      (new LoanApplicationRecordBuilder()..update(updates))._build();

  _$LoanApplicationRecord._(
      {this.loanAgentID, this.id, this.loanID, this.ffRef})
      : super._();

  @override
  LoanApplicationRecord rebuild(
          void Function(LoanApplicationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanApplicationRecordBuilder toBuilder() =>
      new LoanApplicationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanApplicationRecord &&
        loanAgentID == other.loanAgentID &&
        id == other.id &&
        loanID == other.loanID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loanAgentID.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, loanID.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanApplicationRecord')
          ..add('loanAgentID', loanAgentID)
          ..add('id', id)
          ..add('loanID', loanID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanApplicationRecordBuilder
    implements Builder<LoanApplicationRecord, LoanApplicationRecordBuilder> {
  _$LoanApplicationRecord? _$v;

  String? _loanAgentID;
  String? get loanAgentID => _$this._loanAgentID;
  set loanAgentID(String? loanAgentID) => _$this._loanAgentID = loanAgentID;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _loanID;
  int? get loanID => _$this._loanID;
  set loanID(int? loanID) => _$this._loanID = loanID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanApplicationRecordBuilder() {
    LoanApplicationRecord._initializeBuilder(this);
  }

  LoanApplicationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loanAgentID = $v.loanAgentID;
      _id = $v.id;
      _loanID = $v.loanID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanApplicationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanApplicationRecord;
  }

  @override
  void update(void Function(LoanApplicationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanApplicationRecord build() => _build();

  _$LoanApplicationRecord _build() {
    final _$result = _$v ??
        new _$LoanApplicationRecord._(
            loanAgentID: loanAgentID, id: id, loanID: loanID, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
