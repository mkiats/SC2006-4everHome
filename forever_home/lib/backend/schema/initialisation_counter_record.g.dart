// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialisation_counter_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InitialisationCounterRecord>
    _$initialisationCounterRecordSerializer =
    new _$InitialisationCounterRecordSerializer();

class _$InitialisationCounterRecordSerializer
    implements StructuredSerializer<InitialisationCounterRecord> {
  @override
  final Iterable<Type> types = const [
    InitialisationCounterRecord,
    _$InitialisationCounterRecord
  ];
  @override
  final String wireName = 'InitialisationCounterRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InitialisationCounterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.loan;
    if (value != null) {
      result
        ..add('Loan')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.loanApplication;
    if (value != null) {
      result
        ..add('LoanApplication')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.realtorAgent;
    if (value != null) {
      result
        ..add('RealtorAgent')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.interiorDesigner;
    if (value != null) {
      result
        ..add('InteriorDesigner')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listingApplication;
    if (value != null) {
      result
        ..add('ListingApplication')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('User')
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
  InitialisationCounterRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InitialisationCounterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Loan':
          result.loan = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'LoanApplication':
          result.loanApplication = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'RealtorAgent':
          result.realtorAgent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'InteriorDesigner':
          result.interiorDesigner = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ListingApplication':
          result.listingApplication = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'User':
          result.user = serializers.deserialize(value,
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

class _$InitialisationCounterRecord extends InitialisationCounterRecord {
  @override
  final int? loan;
  @override
  final int? loanApplication;
  @override
  final int? realtorAgent;
  @override
  final int? interiorDesigner;
  @override
  final int? listingApplication;
  @override
  final int? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InitialisationCounterRecord(
          [void Function(InitialisationCounterRecordBuilder)? updates]) =>
      (new InitialisationCounterRecordBuilder()..update(updates))._build();

  _$InitialisationCounterRecord._(
      {this.loan,
      this.loanApplication,
      this.realtorAgent,
      this.interiorDesigner,
      this.listingApplication,
      this.user,
      this.ffRef})
      : super._();

  @override
  InitialisationCounterRecord rebuild(
          void Function(InitialisationCounterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitialisationCounterRecordBuilder toBuilder() =>
      new InitialisationCounterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitialisationCounterRecord &&
        loan == other.loan &&
        loanApplication == other.loanApplication &&
        realtorAgent == other.realtorAgent &&
        interiorDesigner == other.interiorDesigner &&
        listingApplication == other.listingApplication &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loan.hashCode);
    _$hash = $jc(_$hash, loanApplication.hashCode);
    _$hash = $jc(_$hash, realtorAgent.hashCode);
    _$hash = $jc(_$hash, interiorDesigner.hashCode);
    _$hash = $jc(_$hash, listingApplication.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitialisationCounterRecord')
          ..add('loan', loan)
          ..add('loanApplication', loanApplication)
          ..add('realtorAgent', realtorAgent)
          ..add('interiorDesigner', interiorDesigner)
          ..add('listingApplication', listingApplication)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InitialisationCounterRecordBuilder
    implements
        Builder<InitialisationCounterRecord,
            InitialisationCounterRecordBuilder> {
  _$InitialisationCounterRecord? _$v;

  int? _loan;
  int? get loan => _$this._loan;
  set loan(int? loan) => _$this._loan = loan;

  int? _loanApplication;
  int? get loanApplication => _$this._loanApplication;
  set loanApplication(int? loanApplication) =>
      _$this._loanApplication = loanApplication;

  int? _realtorAgent;
  int? get realtorAgent => _$this._realtorAgent;
  set realtorAgent(int? realtorAgent) => _$this._realtorAgent = realtorAgent;

  int? _interiorDesigner;
  int? get interiorDesigner => _$this._interiorDesigner;
  set interiorDesigner(int? interiorDesigner) =>
      _$this._interiorDesigner = interiorDesigner;

  int? _listingApplication;
  int? get listingApplication => _$this._listingApplication;
  set listingApplication(int? listingApplication) =>
      _$this._listingApplication = listingApplication;

  int? _user;
  int? get user => _$this._user;
  set user(int? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InitialisationCounterRecordBuilder() {
    InitialisationCounterRecord._initializeBuilder(this);
  }

  InitialisationCounterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loan = $v.loan;
      _loanApplication = $v.loanApplication;
      _realtorAgent = $v.realtorAgent;
      _interiorDesigner = $v.interiorDesigner;
      _listingApplication = $v.listingApplication;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitialisationCounterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitialisationCounterRecord;
  }

  @override
  void update(void Function(InitialisationCounterRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitialisationCounterRecord build() => _build();

  _$InitialisationCounterRecord _build() {
    final _$result = _$v ??
        new _$InitialisationCounterRecord._(
            loan: loan,
            loanApplication: loanApplication,
            realtorAgent: realtorAgent,
            interiorDesigner: interiorDesigner,
            listingApplication: listingApplication,
            user: user,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
