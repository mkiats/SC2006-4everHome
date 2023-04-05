// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingStruct> _$listingStructSerializer =
    new _$ListingStructSerializer();

class _$ListingStructSerializer implements StructuredSerializer<ListingStruct> {
  @override
  final Iterable<Type> types = const [ListingStruct, _$ListingStruct];
  @override
  final String wireName = 'ListingStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListingStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listingLocation',
      serializers.serialize(object.listingLocation,
          specifiedType: const FullType(LocationStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.listingName;
    if (value != null) {
      result
        ..add('listingName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingType;
    if (value != null) {
      result
        ..add('listingType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingImg;
    if (value != null) {
      result
        ..add('listingImg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taxPrice;
    if (value != null) {
      result
        ..add('taxPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.stampDutyPrice;
    if (value != null) {
      result
        ..add('stampDutyPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.legalFeePrice;
    if (value != null) {
      result
        ..add('legalFeePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.propertyPrice;
    if (value != null) {
      result
        ..add('propertyPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.listingFloorNumber;
    if (value != null) {
      result
        ..add('listingFloorNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingUnitNumber;
    if (value != null) {
      result
        ..add('listingUnitNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.leaseDuration;
    if (value != null) {
      result
        ..add('leaseDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.waitingTimeInMonths;
    if (value != null) {
      result
        ..add('waitingTimeInMonths')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.downPaymentPrice;
    if (value != null) {
      result
        ..add('downPaymentPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.optionFeePrice;
    if (value != null) {
      result
        ..add('optionFeePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.valuationFeePrice;
    if (value != null) {
      result
        ..add('valuationFeePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.insuranceFeePrice;
    if (value != null) {
      result
        ..add('insuranceFeePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.agentFeePrice;
    if (value != null) {
      result
        ..add('agentFeePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ListingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listingName':
          result.listingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingType':
          result.listingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingImg':
          result.listingImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingLocation':
          result.listingLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationStruct))!
              as LocationStruct);
          break;
        case 'taxPrice':
          result.taxPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'stampDutyPrice':
          result.stampDutyPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'legalFeePrice':
          result.legalFeePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'propertyPrice':
          result.propertyPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'listingFloorNumber':
          result.listingFloorNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingUnitNumber':
          result.listingUnitNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'leaseDuration':
          result.leaseDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'waitingTimeInMonths':
          result.waitingTimeInMonths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'downPaymentPrice':
          result.downPaymentPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'optionFeePrice':
          result.optionFeePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'valuationFeePrice':
          result.valuationFeePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'insuranceFeePrice':
          result.insuranceFeePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'agentFeePrice':
          result.agentFeePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ListingStruct extends ListingStruct {
  @override
  final String? listingName;
  @override
  final String? listingType;
  @override
  final String? region;
  @override
  final String? listingImg;
  @override
  final LocationStruct listingLocation;
  @override
  final double? taxPrice;
  @override
  final double? stampDutyPrice;
  @override
  final double? legalFeePrice;
  @override
  final double? propertyPrice;
  @override
  final double? totalPrice;
  @override
  final String? listingFloorNumber;
  @override
  final String? listingUnitNumber;
  @override
  final int? leaseDuration;
  @override
  final int? waitingTimeInMonths;
  @override
  final double? downPaymentPrice;
  @override
  final double? optionFeePrice;
  @override
  final double? valuationFeePrice;
  @override
  final double? insuranceFeePrice;
  @override
  final double? agentFeePrice;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ListingStruct([void Function(ListingStructBuilder)? updates]) =>
      (new ListingStructBuilder()..update(updates))._build();

  _$ListingStruct._(
      {this.listingName,
      this.listingType,
      this.region,
      this.listingImg,
      required this.listingLocation,
      this.taxPrice,
      this.stampDutyPrice,
      this.legalFeePrice,
      this.propertyPrice,
      this.totalPrice,
      this.listingFloorNumber,
      this.listingUnitNumber,
      this.leaseDuration,
      this.waitingTimeInMonths,
      this.downPaymentPrice,
      this.optionFeePrice,
      this.valuationFeePrice,
      this.insuranceFeePrice,
      this.agentFeePrice,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listingLocation, r'ListingStruct', 'listingLocation');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ListingStruct', 'firestoreUtilData');
  }

  @override
  ListingStruct rebuild(void Function(ListingStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingStructBuilder toBuilder() => new ListingStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingStruct &&
        listingName == other.listingName &&
        listingType == other.listingType &&
        region == other.region &&
        listingImg == other.listingImg &&
        listingLocation == other.listingLocation &&
        taxPrice == other.taxPrice &&
        stampDutyPrice == other.stampDutyPrice &&
        legalFeePrice == other.legalFeePrice &&
        propertyPrice == other.propertyPrice &&
        totalPrice == other.totalPrice &&
        listingFloorNumber == other.listingFloorNumber &&
        listingUnitNumber == other.listingUnitNumber &&
        leaseDuration == other.leaseDuration &&
        waitingTimeInMonths == other.waitingTimeInMonths &&
        downPaymentPrice == other.downPaymentPrice &&
        optionFeePrice == other.optionFeePrice &&
        valuationFeePrice == other.valuationFeePrice &&
        insuranceFeePrice == other.insuranceFeePrice &&
        agentFeePrice == other.agentFeePrice &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listingName.hashCode);
    _$hash = $jc(_$hash, listingType.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, listingImg.hashCode);
    _$hash = $jc(_$hash, listingLocation.hashCode);
    _$hash = $jc(_$hash, taxPrice.hashCode);
    _$hash = $jc(_$hash, stampDutyPrice.hashCode);
    _$hash = $jc(_$hash, legalFeePrice.hashCode);
    _$hash = $jc(_$hash, propertyPrice.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, listingFloorNumber.hashCode);
    _$hash = $jc(_$hash, listingUnitNumber.hashCode);
    _$hash = $jc(_$hash, leaseDuration.hashCode);
    _$hash = $jc(_$hash, waitingTimeInMonths.hashCode);
    _$hash = $jc(_$hash, downPaymentPrice.hashCode);
    _$hash = $jc(_$hash, optionFeePrice.hashCode);
    _$hash = $jc(_$hash, valuationFeePrice.hashCode);
    _$hash = $jc(_$hash, insuranceFeePrice.hashCode);
    _$hash = $jc(_$hash, agentFeePrice.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingStruct')
          ..add('listingName', listingName)
          ..add('listingType', listingType)
          ..add('region', region)
          ..add('listingImg', listingImg)
          ..add('listingLocation', listingLocation)
          ..add('taxPrice', taxPrice)
          ..add('stampDutyPrice', stampDutyPrice)
          ..add('legalFeePrice', legalFeePrice)
          ..add('propertyPrice', propertyPrice)
          ..add('totalPrice', totalPrice)
          ..add('listingFloorNumber', listingFloorNumber)
          ..add('listingUnitNumber', listingUnitNumber)
          ..add('leaseDuration', leaseDuration)
          ..add('waitingTimeInMonths', waitingTimeInMonths)
          ..add('downPaymentPrice', downPaymentPrice)
          ..add('optionFeePrice', optionFeePrice)
          ..add('valuationFeePrice', valuationFeePrice)
          ..add('insuranceFeePrice', insuranceFeePrice)
          ..add('agentFeePrice', agentFeePrice)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ListingStructBuilder
    implements Builder<ListingStruct, ListingStructBuilder> {
  _$ListingStruct? _$v;

  String? _listingName;
  String? get listingName => _$this._listingName;
  set listingName(String? listingName) => _$this._listingName = listingName;

  String? _listingType;
  String? get listingType => _$this._listingType;
  set listingType(String? listingType) => _$this._listingType = listingType;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _listingImg;
  String? get listingImg => _$this._listingImg;
  set listingImg(String? listingImg) => _$this._listingImg = listingImg;

  LocationStructBuilder? _listingLocation;
  LocationStructBuilder get listingLocation =>
      _$this._listingLocation ??= new LocationStructBuilder();
  set listingLocation(LocationStructBuilder? listingLocation) =>
      _$this._listingLocation = listingLocation;

  double? _taxPrice;
  double? get taxPrice => _$this._taxPrice;
  set taxPrice(double? taxPrice) => _$this._taxPrice = taxPrice;

  double? _stampDutyPrice;
  double? get stampDutyPrice => _$this._stampDutyPrice;
  set stampDutyPrice(double? stampDutyPrice) =>
      _$this._stampDutyPrice = stampDutyPrice;

  double? _legalFeePrice;
  double? get legalFeePrice => _$this._legalFeePrice;
  set legalFeePrice(double? legalFeePrice) =>
      _$this._legalFeePrice = legalFeePrice;

  double? _propertyPrice;
  double? get propertyPrice => _$this._propertyPrice;
  set propertyPrice(double? propertyPrice) =>
      _$this._propertyPrice = propertyPrice;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  String? _listingFloorNumber;
  String? get listingFloorNumber => _$this._listingFloorNumber;
  set listingFloorNumber(String? listingFloorNumber) =>
      _$this._listingFloorNumber = listingFloorNumber;

  String? _listingUnitNumber;
  String? get listingUnitNumber => _$this._listingUnitNumber;
  set listingUnitNumber(String? listingUnitNumber) =>
      _$this._listingUnitNumber = listingUnitNumber;

  int? _leaseDuration;
  int? get leaseDuration => _$this._leaseDuration;
  set leaseDuration(int? leaseDuration) =>
      _$this._leaseDuration = leaseDuration;

  int? _waitingTimeInMonths;
  int? get waitingTimeInMonths => _$this._waitingTimeInMonths;
  set waitingTimeInMonths(int? waitingTimeInMonths) =>
      _$this._waitingTimeInMonths = waitingTimeInMonths;

  double? _downPaymentPrice;
  double? get downPaymentPrice => _$this._downPaymentPrice;
  set downPaymentPrice(double? downPaymentPrice) =>
      _$this._downPaymentPrice = downPaymentPrice;

  double? _optionFeePrice;
  double? get optionFeePrice => _$this._optionFeePrice;
  set optionFeePrice(double? optionFeePrice) =>
      _$this._optionFeePrice = optionFeePrice;

  double? _valuationFeePrice;
  double? get valuationFeePrice => _$this._valuationFeePrice;
  set valuationFeePrice(double? valuationFeePrice) =>
      _$this._valuationFeePrice = valuationFeePrice;

  double? _insuranceFeePrice;
  double? get insuranceFeePrice => _$this._insuranceFeePrice;
  set insuranceFeePrice(double? insuranceFeePrice) =>
      _$this._insuranceFeePrice = insuranceFeePrice;

  double? _agentFeePrice;
  double? get agentFeePrice => _$this._agentFeePrice;
  set agentFeePrice(double? agentFeePrice) =>
      _$this._agentFeePrice = agentFeePrice;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ListingStructBuilder() {
    ListingStruct._initializeBuilder(this);
  }

  ListingStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listingName = $v.listingName;
      _listingType = $v.listingType;
      _region = $v.region;
      _listingImg = $v.listingImg;
      _listingLocation = $v.listingLocation.toBuilder();
      _taxPrice = $v.taxPrice;
      _stampDutyPrice = $v.stampDutyPrice;
      _legalFeePrice = $v.legalFeePrice;
      _propertyPrice = $v.propertyPrice;
      _totalPrice = $v.totalPrice;
      _listingFloorNumber = $v.listingFloorNumber;
      _listingUnitNumber = $v.listingUnitNumber;
      _leaseDuration = $v.leaseDuration;
      _waitingTimeInMonths = $v.waitingTimeInMonths;
      _downPaymentPrice = $v.downPaymentPrice;
      _optionFeePrice = $v.optionFeePrice;
      _valuationFeePrice = $v.valuationFeePrice;
      _insuranceFeePrice = $v.insuranceFeePrice;
      _agentFeePrice = $v.agentFeePrice;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingStruct;
  }

  @override
  void update(void Function(ListingStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingStruct build() => _build();

  _$ListingStruct _build() {
    _$ListingStruct _$result;
    try {
      _$result = _$v ??
          new _$ListingStruct._(
              listingName: listingName,
              listingType: listingType,
              region: region,
              listingImg: listingImg,
              listingLocation: listingLocation.build(),
              taxPrice: taxPrice,
              stampDutyPrice: stampDutyPrice,
              legalFeePrice: legalFeePrice,
              propertyPrice: propertyPrice,
              totalPrice: totalPrice,
              listingFloorNumber: listingFloorNumber,
              listingUnitNumber: listingUnitNumber,
              leaseDuration: leaseDuration,
              waitingTimeInMonths: waitingTimeInMonths,
              downPaymentPrice: downPaymentPrice,
              optionFeePrice: optionFeePrice,
              valuationFeePrice: valuationFeePrice,
              insuranceFeePrice: insuranceFeePrice,
              agentFeePrice: agentFeePrice,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'ListingStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listingLocation';
        listingLocation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListingStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
