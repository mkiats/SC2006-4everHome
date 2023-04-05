// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserStruct> _$userStructSerializer = new _$UserStructSerializer();

class _$UserStructSerializer implements StructuredSerializer<UserStruct> {
  @override
  final Iterable<Type> types = const [UserStruct, _$UserStruct];
  @override
  final String wireName = 'UserStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserStruct object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.photoURL;
    if (value != null) {
      result
        ..add('photo_URL')
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
    return result;
  }

  @override
  UserStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStructBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_URL':
          result.photoURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountType':
          result.accountType = serializers.deserialize(value,
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

class _$UserStruct extends UserStruct {
  @override
  final String? loginId;
  @override
  final String? password;
  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String? emailAddress;
  @override
  final String? photoURL;
  @override
  final String? accountType;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UserStruct([void Function(UserStructBuilder)? updates]) =>
      (new UserStructBuilder()..update(updates))._build();

  _$UserStruct._(
      {this.loginId,
      this.password,
      this.phoneNumber,
      this.name,
      this.emailAddress,
      this.photoURL,
      this.accountType,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UserStruct', 'firestoreUtilData');
  }

  @override
  UserStruct rebuild(void Function(UserStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStructBuilder toBuilder() => new UserStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStruct &&
        loginId == other.loginId &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        name == other.name &&
        emailAddress == other.emailAddress &&
        photoURL == other.photoURL &&
        accountType == other.accountType &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, photoURL.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserStruct')
          ..add('loginId', loginId)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('name', name)
          ..add('emailAddress', emailAddress)
          ..add('photoURL', photoURL)
          ..add('accountType', accountType)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UserStructBuilder implements Builder<UserStruct, UserStructBuilder> {
  _$UserStruct? _$v;

  String? _loginId;
  String? get loginId => _$this._loginId;
  set loginId(String? loginId) => _$this._loginId = loginId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _photoURL;
  String? get photoURL => _$this._photoURL;
  set photoURL(String? photoURL) => _$this._photoURL = photoURL;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(String? accountType) => _$this._accountType = accountType;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UserStructBuilder() {
    UserStruct._initializeBuilder(this);
  }

  UserStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginId = $v.loginId;
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _name = $v.name;
      _emailAddress = $v.emailAddress;
      _photoURL = $v.photoURL;
      _accountType = $v.accountType;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserStruct;
  }

  @override
  void update(void Function(UserStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserStruct build() => _build();

  _$UserStruct _build() {
    final _$result = _$v ??
        new _$UserStruct._(
            loginId: loginId,
            password: password,
            phoneNumber: phoneNumber,
            name: name,
            emailAddress: emailAddress,
            photoURL: photoURL,
            accountType: accountType,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'UserStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
