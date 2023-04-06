import 'dart:async';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listing_record.g.dart';

abstract class ListingRecord
    implements Built<ListingRecord, ListingRecordBuilder> {
  static Serializer<ListingRecord> get serializer => _$listingRecordSerializer;

  String? get listingName;

  String? get listingType;

  String? get region;

  LocationStruct get listingLocation;

  double? get taxPrice;

  String? get listingImg;

  double? get stampDutyPrice;

  double? get legalFeePrice;

  double? get propertyPrice;

  double? get totalPrice;

  String? get listingFloorNumber;

  String? get listingUnitNumber;

  int? get leaseDuration;

  int? get waitingTimeInMonths;

  String? get listingDescription;

  bool? get listingAvailble;

  int? get id;

  double? get downPaymentPrice;

  double? get optionFeePrice;

  double? get valuationFeePrice;

  double? get insuranceFeePrice;

  double? get agentFeePrice;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListingRecordBuilder builder) => builder
    ..listingName = ''
    ..listingType = ''
    ..region = ''
    ..listingLocation = LocationStructBuilder()
    ..taxPrice = 0.0
    ..listingImg = ''
    ..stampDutyPrice = 0.0
    ..legalFeePrice = 0.0
    ..propertyPrice = 0.0
    ..totalPrice = 0.0
    ..listingFloorNumber = ''
    ..listingUnitNumber = ''
    ..leaseDuration = 0
    ..waitingTimeInMonths = 0
    ..listingDescription = ''
    ..listingAvailble = false
    ..id = 0
    ..downPaymentPrice = 0.0
    ..optionFeePrice = 0.0
    ..valuationFeePrice = 0.0
    ..insuranceFeePrice = 0.0
    ..agentFeePrice = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Listing');

  static Stream<ListingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListingRecord._();
  factory ListingRecord([void Function(ListingRecordBuilder) updates]) =
      _$ListingRecord;

  static ListingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListingRecordData({
  String? listingName,
  String? listingType,
  String? region,
  LocationStruct? listingLocation,
  double? taxPrice,
  String? listingImg,
  double? stampDutyPrice,
  double? legalFeePrice,
  double? propertyPrice,
  double? totalPrice,
  String? listingFloorNumber,
  String? listingUnitNumber,
  int? leaseDuration,
  int? waitingTimeInMonths,
  String? listingDescription,
  bool? listingAvailble,
  int? id,
  double? downPaymentPrice,
  double? optionFeePrice,
  double? valuationFeePrice,
  double? insuranceFeePrice,
  double? agentFeePrice,
}) {
  final firestoreData = serializers.toFirestore(
    ListingRecord.serializer,
    ListingRecord(
      (l) => l
        ..listingName = listingName
        ..listingType = listingType
        ..region = region
        ..listingLocation = LocationStructBuilder()
        ..taxPrice = taxPrice
        ..listingImg = listingImg
        ..stampDutyPrice = stampDutyPrice
        ..legalFeePrice = legalFeePrice
        ..propertyPrice = propertyPrice
        ..totalPrice = totalPrice
        ..listingFloorNumber = listingFloorNumber
        ..listingUnitNumber = listingUnitNumber
        ..leaseDuration = leaseDuration
        ..waitingTimeInMonths = waitingTimeInMonths
        ..listingDescription = listingDescription
        ..listingAvailble = listingAvailble
        ..id = id
        ..downPaymentPrice = downPaymentPrice
        ..optionFeePrice = optionFeePrice
        ..valuationFeePrice = valuationFeePrice
        ..insuranceFeePrice = insuranceFeePrice
        ..agentFeePrice = agentFeePrice,
    ),
  );

  // Handle nested data for "listingLocation" field.
  addLocationStructData(firestoreData, listingLocation, 'listingLocation');

  return firestoreData;
}
