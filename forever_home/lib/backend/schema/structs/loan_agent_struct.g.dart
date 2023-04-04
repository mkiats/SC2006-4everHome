// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_agent_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanAgentStruct> _$loanAgentStructSerializer =
    new _$LoanAgentStructSerializer();

class _$LoanAgentStructSerializer
    implements StructuredSerializer<LoanAgentStruct> {
  @override
  final Iterable<Type> types = const [LoanAgentStruct, _$LoanAgentStruct];
  @override
  final String wireName = 'LoanAgentStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanAgentStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
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
    return result;
  }

  @override
  LoanAgentStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanAgentStructBuilder();

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

class _$LoanAgentStruct extends LoanAgentStruct {
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
  final FirestoreUtilData firestoreUtilData;

  factory _$LoanAgentStruct([void Function(LoanAgentStructBuilder)? updates]) =>
      (new LoanAgentStructBuilder()..update(updates))._build();

  _$LoanAgentStruct._(
      {this.loginId,
      this.password,
      this.phoneNumber,
      this.emailAddress,
      this.company,
      this.interestRate,
      this.accountType,
      this.rating,
      this.name,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LoanAgentStruct', 'firestoreUtilData');
  }

  @override
  LoanAgentStruct rebuild(void Function(LoanAgentStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanAgentStructBuilder toBuilder() =>
      new LoanAgentStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanAgentStruct &&
        loginId == other.loginId &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        emailAddress == other.emailAddress &&
        company == other.company &&
        interestRate == other.interestRate &&
        accountType == other.accountType &&
        rating == other.rating &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
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
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanAgentStruct')
          ..add('loginId', loginId)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('emailAddress', emailAddress)
          ..add('company', company)
          ..add('interestRate', interestRate)
          ..add('accountType', accountType)
          ..add('rating', rating)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LoanAgentStructBuilder
    implements Builder<LoanAgentStruct, LoanAgentStructBuilder> {
  _$LoanAgentStruct? _$v;

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

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LoanAgentStructBuilder() {
    LoanAgentStruct._initializeBuilder(this);
  }

  LoanAgentStructBuilder get _$this {
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
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanAgentStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanAgentStruct;
  }

  @override
  void update(void Function(LoanAgentStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanAgentStruct build() => _build();

  _$LoanAgentStruct _build() {
    final _$result = _$v ??
        new _$LoanAgentStruct._(
            loginId: loginId,
            password: password,
            phoneNumber: phoneNumber,
            emailAddress: emailAddress,
            company: company,
            interestRate: interestRate,
            accountType: accountType,
            rating: rating,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LoanAgentStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
