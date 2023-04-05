// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanStruct> _$loanStructSerializer = new _$LoanStructSerializer();

class _$LoanStructSerializer implements StructuredSerializer<LoanStruct> {
  @override
  final Iterable<Type> types = const [LoanStruct, _$LoanStruct];
  @override
  final String wireName = 'LoanStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
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
    return result;
  }

  @override
  LoanStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanStructBuilder();

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

class _$LoanStruct extends LoanStruct {
  @override
  final double? principalAmount;
  @override
  final int? loanPeriodInMonths;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LoanStruct([void Function(LoanStructBuilder)? updates]) =>
      (new LoanStructBuilder()..update(updates))._build();

  _$LoanStruct._(
      {this.principalAmount,
      this.loanPeriodInMonths,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LoanStruct', 'firestoreUtilData');
  }

  @override
  LoanStruct rebuild(void Function(LoanStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanStructBuilder toBuilder() => new LoanStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanStruct &&
        principalAmount == other.principalAmount &&
        loanPeriodInMonths == other.loanPeriodInMonths &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalAmount.hashCode);
    _$hash = $jc(_$hash, loanPeriodInMonths.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanStruct')
          ..add('principalAmount', principalAmount)
          ..add('loanPeriodInMonths', loanPeriodInMonths)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LoanStructBuilder implements Builder<LoanStruct, LoanStructBuilder> {
  _$LoanStruct? _$v;

  double? _principalAmount;
  double? get principalAmount => _$this._principalAmount;
  set principalAmount(double? principalAmount) =>
      _$this._principalAmount = principalAmount;

  int? _loanPeriodInMonths;
  int? get loanPeriodInMonths => _$this._loanPeriodInMonths;
  set loanPeriodInMonths(int? loanPeriodInMonths) =>
      _$this._loanPeriodInMonths = loanPeriodInMonths;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LoanStructBuilder() {
    LoanStruct._initializeBuilder(this);
  }

  LoanStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalAmount = $v.principalAmount;
      _loanPeriodInMonths = $v.loanPeriodInMonths;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanStruct;
  }

  @override
  void update(void Function(LoanStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanStruct build() => _build();

  _$LoanStruct _build() {
    final _$result = _$v ??
        new _$LoanStruct._(
            principalAmount: principalAmount,
            loanPeriodInMonths: loanPeriodInMonths,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LoanStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
