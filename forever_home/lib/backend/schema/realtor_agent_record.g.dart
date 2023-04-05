// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtor_agent_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RealtorAgentRecord> _$realtorAgentRecordSerializer =
    new _$RealtorAgentRecordSerializer();

class _$RealtorAgentRecordSerializer
    implements StructuredSerializer<RealtorAgentRecord> {
  @override
  final Iterable<Type> types = const [RealtorAgentRecord, _$RealtorAgentRecord];
  @override
  final String wireName = 'RealtorAgentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RealtorAgentRecord object,
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
  RealtorAgentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RealtorAgentRecordBuilder();

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

class _$RealtorAgentRecord extends RealtorAgentRecord {
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
  final DocumentReference<Object?>? ffRef;

  factory _$RealtorAgentRecord(
          [void Function(RealtorAgentRecordBuilder)? updates]) =>
      (new RealtorAgentRecordBuilder()..update(updates))._build();

  _$RealtorAgentRecord._(
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
      this.ffRef})
      : super._();

  @override
  RealtorAgentRecord rebuild(
          void Function(RealtorAgentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RealtorAgentRecordBuilder toBuilder() =>
      new RealtorAgentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RealtorAgentRecord &&
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
        ffRef == other.ffRef;
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
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RealtorAgentRecord')
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
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RealtorAgentRecordBuilder
    implements Builder<RealtorAgentRecord, RealtorAgentRecordBuilder> {
  _$RealtorAgentRecord? _$v;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RealtorAgentRecordBuilder() {
    RealtorAgentRecord._initializeBuilder(this);
  }

  RealtorAgentRecordBuilder get _$this {
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
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RealtorAgentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RealtorAgentRecord;
  }

  @override
  void update(void Function(RealtorAgentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RealtorAgentRecord build() => _build();

  _$RealtorAgentRecord _build() {
    final _$result = _$v ??
        new _$RealtorAgentRecord._(
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
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
