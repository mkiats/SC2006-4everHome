// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_application_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingApplicationStruct> _$listingApplicationStructSerializer =
    new _$ListingApplicationStructSerializer();

class _$ListingApplicationStructSerializer
    implements StructuredSerializer<ListingApplicationStruct> {
  @override
  final Iterable<Type> types = const [
    ListingApplicationStruct,
    _$ListingApplicationStruct
  ];
  @override
  final String wireName = 'ListingApplicationStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListingApplicationStruct object,
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
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanApplicationID;
    if (value != null) {
      result
        ..add('loanApplicationID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.realtorID;
    if (value != null) {
      result
        ..add('realtorID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interiorDesignerID;
    if (value != null) {
      result
        ..add('interiorDesignerID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ListingApplicationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingApplicationStructBuilder();

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
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loanApplicationID':
          result.loanApplicationID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'realtorID':
          result.realtorID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interiorDesignerID':
          result.interiorDesignerID = serializers.deserialize(value,
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

class _$ListingApplicationStruct extends ListingApplicationStruct {
  @override
  final String? id;
  @override
  final String? userID;
  @override
  final String? loanApplicationID;
  @override
  final String? realtorID;
  @override
  final String? interiorDesignerID;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ListingApplicationStruct(
          [void Function(ListingApplicationStructBuilder)? updates]) =>
      (new ListingApplicationStructBuilder()..update(updates))._build();

  _$ListingApplicationStruct._(
      {this.id,
      this.userID,
      this.loanApplicationID,
      this.realtorID,
      this.interiorDesignerID,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ListingApplicationStruct', 'firestoreUtilData');
  }

  @override
  ListingApplicationStruct rebuild(
          void Function(ListingApplicationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingApplicationStructBuilder toBuilder() =>
      new ListingApplicationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingApplicationStruct &&
        id == other.id &&
        userID == other.userID &&
        loanApplicationID == other.loanApplicationID &&
        realtorID == other.realtorID &&
        interiorDesignerID == other.interiorDesignerID &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userID.hashCode);
    _$hash = $jc(_$hash, loanApplicationID.hashCode);
    _$hash = $jc(_$hash, realtorID.hashCode);
    _$hash = $jc(_$hash, interiorDesignerID.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingApplicationStruct')
          ..add('id', id)
          ..add('userID', userID)
          ..add('loanApplicationID', loanApplicationID)
          ..add('realtorID', realtorID)
          ..add('interiorDesignerID', interiorDesignerID)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ListingApplicationStructBuilder
    implements
        Builder<ListingApplicationStruct, ListingApplicationStructBuilder> {
  _$ListingApplicationStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _loanApplicationID;
  String? get loanApplicationID => _$this._loanApplicationID;
  set loanApplicationID(String? loanApplicationID) =>
      _$this._loanApplicationID = loanApplicationID;

  String? _realtorID;
  String? get realtorID => _$this._realtorID;
  set realtorID(String? realtorID) => _$this._realtorID = realtorID;

  String? _interiorDesignerID;
  String? get interiorDesignerID => _$this._interiorDesignerID;
  set interiorDesignerID(String? interiorDesignerID) =>
      _$this._interiorDesignerID = interiorDesignerID;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ListingApplicationStructBuilder() {
    ListingApplicationStruct._initializeBuilder(this);
  }

  ListingApplicationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userID = $v.userID;
      _loanApplicationID = $v.loanApplicationID;
      _realtorID = $v.realtorID;
      _interiorDesignerID = $v.interiorDesignerID;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingApplicationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingApplicationStruct;
  }

  @override
  void update(void Function(ListingApplicationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingApplicationStruct build() => _build();

  _$ListingApplicationStruct _build() {
    final _$result = _$v ??
        new _$ListingApplicationStruct._(
            id: id,
            userID: userID,
            loanApplicationID: loanApplicationID,
            realtorID: realtorID,
            interiorDesignerID: interiorDesignerID,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ListingApplicationStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
