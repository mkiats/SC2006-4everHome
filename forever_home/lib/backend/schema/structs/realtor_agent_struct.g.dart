// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtor_agent_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RealtorAgentStruct> _$realtorAgentStructSerializer =
    new _$RealtorAgentStructSerializer();

class _$RealtorAgentStructSerializer
    implements StructuredSerializer<RealtorAgentStruct> {
  @override
  final Iterable<Type> types = const [RealtorAgentStruct, _$RealtorAgentStruct];
  @override
  final String wireName = 'RealtorAgentStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RealtorAgentStruct object,
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
    value = object.accountType;
    if (value != null) {
      result
        ..add('accountType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yearsOfExperience;
    if (value != null) {
      result
        ..add('yearsOfExperience')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profilePhoto;
    if (value != null) {
      result
        ..add('profilePhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RealtorAgentStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RealtorAgentStructBuilder();

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
        case 'accountType':
          result.accountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'yearsOfExperience':
          result.yearsOfExperience = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'profilePhoto':
          result.profilePhoto = serializers.deserialize(value,
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

class _$RealtorAgentStruct extends RealtorAgentStruct {
  @override
  final String? loginId;
  @override
  final String? password;
  @override
  final String? accountType;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? emailAddress;
  @override
  final double? rating;
  @override
  final String? company;
  @override
  final int? yearsOfExperience;
  @override
  final String? profilePhoto;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RealtorAgentStruct(
          [void Function(RealtorAgentStructBuilder)? updates]) =>
      (new RealtorAgentStructBuilder()..update(updates))._build();

  _$RealtorAgentStruct._(
      {this.loginId,
      this.password,
      this.accountType,
      this.name,
      this.phoneNumber,
      this.emailAddress,
      this.rating,
      this.company,
      this.yearsOfExperience,
      this.profilePhoto,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RealtorAgentStruct', 'firestoreUtilData');
  }

  @override
  RealtorAgentStruct rebuild(
          void Function(RealtorAgentStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RealtorAgentStructBuilder toBuilder() =>
      new RealtorAgentStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RealtorAgentStruct &&
        loginId == other.loginId &&
        password == other.password &&
        accountType == other.accountType &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        emailAddress == other.emailAddress &&
        rating == other.rating &&
        company == other.company &&
        yearsOfExperience == other.yearsOfExperience &&
        profilePhoto == other.profilePhoto &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, yearsOfExperience.hashCode);
    _$hash = $jc(_$hash, profilePhoto.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RealtorAgentStruct')
          ..add('loginId', loginId)
          ..add('password', password)
          ..add('accountType', accountType)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('emailAddress', emailAddress)
          ..add('rating', rating)
          ..add('company', company)
          ..add('yearsOfExperience', yearsOfExperience)
          ..add('profilePhoto', profilePhoto)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RealtorAgentStructBuilder
    implements Builder<RealtorAgentStruct, RealtorAgentStructBuilder> {
  _$RealtorAgentStruct? _$v;

  String? _loginId;
  String? get loginId => _$this._loginId;
  set loginId(String? loginId) => _$this._loginId = loginId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(String? accountType) => _$this._accountType = accountType;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  int? _yearsOfExperience;
  int? get yearsOfExperience => _$this._yearsOfExperience;
  set yearsOfExperience(int? yearsOfExperience) =>
      _$this._yearsOfExperience = yearsOfExperience;

  String? _profilePhoto;
  String? get profilePhoto => _$this._profilePhoto;
  set profilePhoto(String? profilePhoto) => _$this._profilePhoto = profilePhoto;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RealtorAgentStructBuilder() {
    RealtorAgentStruct._initializeBuilder(this);
  }

  RealtorAgentStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginId = $v.loginId;
      _password = $v.password;
      _accountType = $v.accountType;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _emailAddress = $v.emailAddress;
      _rating = $v.rating;
      _company = $v.company;
      _yearsOfExperience = $v.yearsOfExperience;
      _profilePhoto = $v.profilePhoto;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RealtorAgentStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RealtorAgentStruct;
  }

  @override
  void update(void Function(RealtorAgentStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RealtorAgentStruct build() => _build();

  _$RealtorAgentStruct _build() {
    final _$result = _$v ??
        new _$RealtorAgentStruct._(
            loginId: loginId,
            password: password,
            accountType: accountType,
            name: name,
            phoneNumber: phoneNumber,
            emailAddress: emailAddress,
            rating: rating,
            company: company,
            yearsOfExperience: yearsOfExperience,
            profilePhoto: profilePhoto,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'RealtorAgentStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
