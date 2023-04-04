// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanRecord> _$loanRecordSerializer = new _$LoanRecordSerializer();

class _$LoanRecordSerializer implements StructuredSerializer<LoanRecord> {
  @override
  final Iterable<Type> types = const [LoanRecord, _$LoanRecord];
  @override
  final String wireName = 'LoanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.principalAmount;
    if (value != null) {
      result
        ..add('principalAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.loanPeriodInMonths;
    if (value != null) {
      result
        ..add('loanPeriodInMonths')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  LoanRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'principalAmount':
          result.principalAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'loanPeriodInMonths':
          result.loanPeriodInMonths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$LoanRecord extends LoanRecord {
  @override
  final double? principalAmount;
  @override
  final int? loanPeriodInMonths;
  @override
  final int? id;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanRecord([void Function(LoanRecordBuilder)? updates]) =>
      (new LoanRecordBuilder()..update(updates))._build();

  _$LoanRecord._(
      {this.principalAmount, this.loanPeriodInMonths, this.id, this.ffRef})
      : super._();

  @override
  LoanRecord rebuild(void Function(LoanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanRecordBuilder toBuilder() => new LoanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanRecord &&
        principalAmount == other.principalAmount &&
        loanPeriodInMonths == other.loanPeriodInMonths &&
        id == other.id &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalAmount.hashCode);
    _$hash = $jc(_$hash, loanPeriodInMonths.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanRecord')
          ..add('principalAmount', principalAmount)
          ..add('loanPeriodInMonths', loanPeriodInMonths)
          ..add('id', id)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanRecordBuilder implements Builder<LoanRecord, LoanRecordBuilder> {
  _$LoanRecord? _$v;

  double? _principalAmount;
  double? get principalAmount => _$this._principalAmount;
  set principalAmount(double? principalAmount) =>
      _$this._principalAmount = principalAmount;

  int? _loanPeriodInMonths;
  int? get loanPeriodInMonths => _$this._loanPeriodInMonths;
  set loanPeriodInMonths(int? loanPeriodInMonths) =>
      _$this._loanPeriodInMonths = loanPeriodInMonths;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanRecordBuilder() {
    LoanRecord._initializeBuilder(this);
  }

  LoanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalAmount = $v.principalAmount;
      _loanPeriodInMonths = $v.loanPeriodInMonths;
      _id = $v.id;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanRecord;
  }

  @override
  void update(void Function(LoanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanRecord build() => _build();

  _$LoanRecord _build() {
    final _$result = _$v ??
        new _$LoanRecord._(
            principalAmount: principalAmount,
            loanPeriodInMonths: loanPeriodInMonths,
            id: id,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
