// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_application_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanApplicationStruct> _$loanApplicationStructSerializer =
    new _$LoanApplicationStructSerializer();

class _$LoanApplicationStructSerializer
    implements StructuredSerializer<LoanApplicationStruct> {
  @override
  final Iterable<Type> types = const [
    LoanApplicationStruct,
    _$LoanApplicationStruct
  ];
  @override
  final String wireName = 'LoanApplicationStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LoanApplicationStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanID;
    if (value != null) {
      result
        ..add('loanID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanAgentID;
    if (value != null) {
      result
        ..add('loanAgentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoanApplicationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanApplicationStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loanID':
          result.loanID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loanAgentID':
          result.loanAgentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LoanApplicationStruct extends LoanApplicationStruct {
  @override
  final String? id;
  @override
  final String? loanID;
  @override
  final String? loanAgentID;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LoanApplicationStruct(
          [void Function(LoanApplicationStructBuilder)? updates]) =>
      (new LoanApplicationStructBuilder()..update(updates))._build();

  _$LoanApplicationStruct._(
      {this.id, this.loanID, this.loanAgentID, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LoanApplicationStruct', 'firestoreUtilData');
  }

  @override
  LoanApplicationStruct rebuild(
          void Function(LoanApplicationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanApplicationStructBuilder toBuilder() =>
      new LoanApplicationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanApplicationStruct &&
        id == other.id &&
        loanID == other.loanID &&
        loanAgentID == other.loanAgentID &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, loanID.hashCode);
    _$hash = $jc(_$hash, loanAgentID.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanApplicationStruct')
          ..add('id', id)
          ..add('loanID', loanID)
          ..add('loanAgentID', loanAgentID)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LoanApplicationStructBuilder
    implements Builder<LoanApplicationStruct, LoanApplicationStructBuilder> {
  _$LoanApplicationStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _loanID;
  String? get loanID => _$this._loanID;
  set loanID(String? loanID) => _$this._loanID = loanID;

  String? _loanAgentID;
  String? get loanAgentID => _$this._loanAgentID;
  set loanAgentID(String? loanAgentID) => _$this._loanAgentID = loanAgentID;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LoanApplicationStructBuilder() {
    LoanApplicationStruct._initializeBuilder(this);
  }

  LoanApplicationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _loanID = $v.loanID;
      _loanAgentID = $v.loanAgentID;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanApplicationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanApplicationStruct;
  }

  @override
  void update(void Function(LoanApplicationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanApplicationStruct build() => _build();

  _$LoanApplicationStruct _build() {
    final _$result = _$v ??
        new _$LoanApplicationStruct._(
            id: id,
            loanID: loanID,
            loanAgentID: loanAgentID,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'LoanApplicationStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
