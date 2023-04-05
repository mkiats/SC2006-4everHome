// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_agent_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanAgentRecord> _$loanAgentRecordSerializer =
    new _$LoanAgentRecordSerializer();

class _$LoanAgentRecordSerializer
    implements StructuredSerializer<LoanAgentRecord> {
  @override
  final Iterable<Type> types = const [LoanAgentRecord, _$LoanAgentRecord];
  @override
  final String wireName = 'LoanAgentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanAgentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.loginId;
    if (value != null) {
      result
        ..add('loginId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interestRate;
    if (value != null) {
      result
        ..add('interestRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accountType;
    if (value != null) {
      result
        ..add('accountType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
  LoanAgentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanAgentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'loginId':
          result.loginId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interestRate':
          result.interestRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accountType':
          result.accountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$LoanAgentRecord extends LoanAgentRecord {
  @override
  final String? loginId;
  @override
  final String? password;
  @override
  final String? phoneNumber;
  @override
  final String? emailAddress;
  @override
  final String? company;
  @override
  final double? interestRate;
  @override
  final String? accountType;
  @override
  final double? rating;
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanAgentRecord([void Function(LoanAgentRecordBuilder)? updates]) =>
      (new LoanAgentRecordBuilder()..update(updates))._build();

  _$LoanAgentRecord._(
      {this.loginId,
      this.password,
      this.phoneNumber,
      this.emailAddress,
      this.company,
      this.interestRate,
      this.accountType,
      this.rating,
      this.name,
      this.ffRef})
      : super._();

  @override
  LoanAgentRecord rebuild(void Function(LoanAgentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanAgentRecordBuilder toBuilder() =>
      new LoanAgentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanAgentRecord &&
        loginId == other.loginId &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        emailAddress == other.emailAddress &&
        company == other.company &&
        interestRate == other.interestRate &&
        accountType == other.accountType &&
        rating == other.rating &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, interestRate.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanAgentRecord')
          ..add('loginId', loginId)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('emailAddress', emailAddress)
          ..add('company', company)
          ..add('interestRate', interestRate)
          ..add('accountType', accountType)
          ..add('rating', rating)
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanAgentRecordBuilder
    implements Builder<LoanAgentRecord, LoanAgentRecordBuilder> {
  _$LoanAgentRecord? _$v;

  String? _loginId;
  String? get loginId => _$this._loginId;
  set loginId(String? loginId) => _$this._loginId = loginId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  double? _interestRate;
  double? get interestRate => _$this._interestRate;
  set interestRate(double? interestRate) => _$this._interestRate = interestRate;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(String? accountType) => _$this._accountType = accountType;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanAgentRecordBuilder() {
    LoanAgentRecord._initializeBuilder(this);
  }

  LoanAgentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginId = $v.loginId;
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _emailAddress = $v.emailAddress;
      _company = $v.company;
      _interestRate = $v.interestRate;
      _accountType = $v.accountType;
      _rating = $v.rating;
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanAgentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanAgentRecord;
  }

  @override
  void update(void Function(LoanAgentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanAgentRecord build() => _build();

  _$LoanAgentRecord _build() {
    final _$result = _$v ??
        new _$LoanAgentRecord._(
            loginId: loginId,
            password: password,
            phoneNumber: phoneNumber,
            emailAddress: emailAddress,
            company: company,
            interestRate: interestRate,
            accountType: accountType,
            rating: rating,
            name: name,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
