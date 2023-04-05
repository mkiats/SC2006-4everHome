// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationStruct> _$locationStructSerializer =
    new _$LocationStructSerializer();

class _$LocationStructSerializer
    implements StructuredSerializer<LocationStruct> {
  @override
  final Iterable<Type> types = const [LocationStruct, _$LocationStruct];
  @override
  final String wireName = 'LocationStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressName;
    if (value != null) {
      result
        ..add('addressName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latlong;
    if (value != null) {
      result
        ..add('latlong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  LocationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addressName':
          result.addressName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latlong':
          result.latlong = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$LocationStruct extends LocationStruct {
  @override
  final String? postalCode;
  @override
  final String? addressName;
  @override
  final LatLng? latlong;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LocationStruct([void Function(LocationStructBuilder)? updates]) =>
      (new LocationStructBuilder()..update(updates))._build();

  _$LocationStruct._(
      {this.postalCode,
      this.addressName,
      this.latlong,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LocationStruct', 'firestoreUtilData');
  }

  @override
  LocationStruct rebuild(void Function(LocationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationStructBuilder toBuilder() =>
      new LocationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationStruct &&
        postalCode == other.postalCode &&
        addressName == other.addressName &&
        latlong == other.latlong &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, addressName.hashCode);
    _$hash = $jc(_$hash, latlong.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationStruct')
          ..add('postalCode', postalCode)
          ..add('addressName', addressName)
          ..add('latlong', latlong)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LocationStructBuilder
    implements Builder<LocationStruct, LocationStructBuilder> {
  _$LocationStruct? _$v;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _addressName;
  String? get addressName => _$this._addressName;
  set addressName(String? addressName) => _$this._addressName = addressName;

  LatLng? _latlong;
  LatLng? get latlong => _$this._latlong;
  set latlong(LatLng? latlong) => _$this._latlong = latlong;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LocationStructBuilder() {
    LocationStruct._initializeBuilder(this);
  }

  LocationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postalCode = $v.postalCode;
      _addressName = $v.addressName;
      _latlong = $v.latlong;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationStruct;
  }

  @override
  void update(void Function(LocationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationStruct build() => _build();

  _$LocationStruct _build() {
    final _$result = _$v ??
        new _$LocationStruct._(
            postalCode: postalCode,
            addressName: addressName,
            latlong: latlong,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LocationStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
