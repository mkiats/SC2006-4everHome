// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingRecord> _$listingRecordSerializer =
    new _$ListingRecordSerializer();

class _$ListingRecordSerializer implements StructuredSerializer<ListingRecord> {
  @override
  final Iterable<Type> types = const [ListingRecord, _$ListingRecord];
  @override
  final String wireName = 'ListingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listingLocation',
      serializers.serialize(object.listingLocation,
          specifiedType: const FullType(LocationStruct)),
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
    value = object.taxPrice;
    if (value != null) {
      result
        ..add('taxPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.listingImg;
    if (value != null) {
      result
        ..add('listingImg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.listingDescription;
    if (value != null) {
      result
        ..add('listingDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingAvailble;
    if (value != null) {
      result
        ..add('listingAvailble')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  ListingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingRecordBuilder();

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
        case 'listingLocation':
          result.listingLocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationStruct))!
              as LocationStruct);
          break;
        case 'taxPrice':
          result.taxPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'listingImg':
          result.listingImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
        case 'listingDescription':
          result.listingDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingAvailble':
          result.listingAvailble = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$ListingRecord extends ListingRecord {
  @override
  final String? listingName;
  @override
  final String? listingType;
  @override
  final String? region;
  @override
  final LocationStruct listingLocation;
  @override
  final double? taxPrice;
  @override
  final String? listingImg;
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
  final String? listingDescription;
  @override
  final bool? listingAvailble;
  @override
  final int? id;
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
  final DocumentReference<Object?>? ffRef;

  factory _$ListingRecord([void Function(ListingRecordBuilder)? updates]) =>
      (new ListingRecordBuilder()..update(updates))._build();

  _$ListingRecord._(
      {this.listingName,
      this.listingType,
      this.region,
      required this.listingLocation,
      this.taxPrice,
      this.listingImg,
      this.stampDutyPrice,
      this.legalFeePrice,
      this.propertyPrice,
      this.totalPrice,
      this.listingFloorNumber,
      this.listingUnitNumber,
      this.leaseDuration,
      this.waitingTimeInMonths,
      this.listingDescription,
      this.listingAvailble,
      this.id,
      this.downPaymentPrice,
      this.optionFeePrice,
      this.valuationFeePrice,
      this.insuranceFeePrice,
      this.agentFeePrice,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listingLocation, r'ListingRecord', 'listingLocation');
  }

  @override
  ListingRecord rebuild(void Function(ListingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingRecordBuilder toBuilder() => new ListingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingRecord &&
        listingName == other.listingName &&
        listingType == other.listingType &&
        region == other.region &&
        listingLocation == other.listingLocation &&
        taxPrice == other.taxPrice &&
        listingImg == other.listingImg &&
        stampDutyPrice == other.stampDutyPrice &&
        legalFeePrice == other.legalFeePrice &&
        propertyPrice == other.propertyPrice &&
        totalPrice == other.totalPrice &&
        listingFloorNumber == other.listingFloorNumber &&
        listingUnitNumber == other.listingUnitNumber &&
        leaseDuration == other.leaseDuration &&
        waitingTimeInMonths == other.waitingTimeInMonths &&
        listingDescription == other.listingDescription &&
        listingAvailble == other.listingAvailble &&
        id == other.id &&
        downPaymentPrice == other.downPaymentPrice &&
        optionFeePrice == other.optionFeePrice &&
        valuationFeePrice == other.valuationFeePrice &&
        insuranceFeePrice == other.insuranceFeePrice &&
        agentFeePrice == other.agentFeePrice &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listingName.hashCode);
    _$hash = $jc(_$hash, listingType.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, listingLocation.hashCode);
    _$hash = $jc(_$hash, taxPrice.hashCode);
    _$hash = $jc(_$hash, listingImg.hashCode);
    _$hash = $jc(_$hash, stampDutyPrice.hashCode);
    _$hash = $jc(_$hash, legalFeePrice.hashCode);
    _$hash = $jc(_$hash, propertyPrice.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, listingFloorNumber.hashCode);
    _$hash = $jc(_$hash, listingUnitNumber.hashCode);
    _$hash = $jc(_$hash, leaseDuration.hashCode);
    _$hash = $jc(_$hash, waitingTimeInMonths.hashCode);
    _$hash = $jc(_$hash, listingDescription.hashCode);
    _$hash = $jc(_$hash, listingAvailble.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, downPaymentPrice.hashCode);
    _$hash = $jc(_$hash, optionFeePrice.hashCode);
    _$hash = $jc(_$hash, valuationFeePrice.hashCode);
    _$hash = $jc(_$hash, insuranceFeePrice.hashCode);
    _$hash = $jc(_$hash, agentFeePrice.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingRecord')
          ..add('listingName', listingName)
          ..add('listingType', listingType)
          ..add('region', region)
          ..add('listingLocation', listingLocation)
          ..add('taxPrice', taxPrice)
          ..add('listingImg', listingImg)
          ..add('stampDutyPrice', stampDutyPrice)
          ..add('legalFeePrice', legalFeePrice)
          ..add('propertyPrice', propertyPrice)
          ..add('totalPrice', totalPrice)
          ..add('listingFloorNumber', listingFloorNumber)
          ..add('listingUnitNumber', listingUnitNumber)
          ..add('leaseDuration', leaseDuration)
          ..add('waitingTimeInMonths', waitingTimeInMonths)
          ..add('listingDescription', listingDescription)
          ..add('listingAvailble', listingAvailble)
          ..add('id', id)
          ..add('downPaymentPrice', downPaymentPrice)
          ..add('optionFeePrice', optionFeePrice)
          ..add('valuationFeePrice', valuationFeePrice)
          ..add('insuranceFeePrice', insuranceFeePrice)
          ..add('agentFeePrice', agentFeePrice)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListingRecordBuilder
    implements Builder<ListingRecord, ListingRecordBuilder> {
  _$ListingRecord? _$v;

  String? _listingName;
  String? get listingName => _$this._listingName;
  set listingName(String? listingName) => _$this._listingName = listingName;

  String? _listingType;
  String? get listingType => _$this._listingType;
  set listingType(String? listingType) => _$this._listingType = listingType;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  LocationStructBuilder? _listingLocation;
  LocationStructBuilder get listingLocation =>
      _$this._listingLocation ??= new LocationStructBuilder();
  set listingLocation(LocationStructBuilder? listingLocation) =>
      _$this._listingLocation = listingLocation;

  double? _taxPrice;
  double? get taxPrice => _$this._taxPrice;
  set taxPrice(double? taxPrice) => _$this._taxPrice = taxPrice;

  String? _listingImg;
  String? get listingImg => _$this._listingImg;
  set listingImg(String? listingImg) => _$this._listingImg = listingImg;

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

  String? _listingDescription;
  String? get listingDescription => _$this._listingDescription;
  set listingDescription(String? listingDescription) =>
      _$this._listingDescription = listingDescription;

  bool? _listingAvailble;
  bool? get listingAvailble => _$this._listingAvailble;
  set listingAvailble(bool? listingAvailble) =>
      _$this._listingAvailble = listingAvailble;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListingRecordBuilder() {
    ListingRecord._initializeBuilder(this);
  }

  ListingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listingName = $v.listingName;
      _listingType = $v.listingType;
      _region = $v.region;
      _listingLocation = $v.listingLocation.toBuilder();
      _taxPrice = $v.taxPrice;
      _listingImg = $v.listingImg;
      _stampDutyPrice = $v.stampDutyPrice;
      _legalFeePrice = $v.legalFeePrice;
      _propertyPrice = $v.propertyPrice;
      _totalPrice = $v.totalPrice;
      _listingFloorNumber = $v.listingFloorNumber;
      _listingUnitNumber = $v.listingUnitNumber;
      _leaseDuration = $v.leaseDuration;
      _waitingTimeInMonths = $v.waitingTimeInMonths;
      _listingDescription = $v.listingDescription;
      _listingAvailble = $v.listingAvailble;
      _id = $v.id;
      _downPaymentPrice = $v.downPaymentPrice;
      _optionFeePrice = $v.optionFeePrice;
      _valuationFeePrice = $v.valuationFeePrice;
      _insuranceFeePrice = $v.insuranceFeePrice;
      _agentFeePrice = $v.agentFeePrice;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingRecord;
  }

  @override
  void update(void Function(ListingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingRecord build() => _build();

  _$ListingRecord _build() {
    _$ListingRecord _$result;
    try {
      _$result = _$v ??
          new _$ListingRecord._(
              listingName: listingName,
              listingType: listingType,
              region: region,
              listingLocation: listingLocation.build(),
              taxPrice: taxPrice,
              listingImg: listingImg,
              stampDutyPrice: stampDutyPrice,
              legalFeePrice: legalFeePrice,
              propertyPrice: propertyPrice,
              totalPrice: totalPrice,
              listingFloorNumber: listingFloorNumber,
              listingUnitNumber: listingUnitNumber,
              leaseDuration: leaseDuration,
              waitingTimeInMonths: waitingTimeInMonths,
              listingDescription: listingDescription,
              listingAvailble: listingAvailble,
              id: id,
              downPaymentPrice: downPaymentPrice,
              optionFeePrice: optionFeePrice,
              valuationFeePrice: valuationFeePrice,
              insuranceFeePrice: insuranceFeePrice,
              agentFeePrice: agentFeePrice,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listingLocation';
        listingLocation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
