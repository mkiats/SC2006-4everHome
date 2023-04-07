import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'listing_struct.g.dart';

abstract class ListingStruct
    implements Built<ListingStruct, ListingStructBuilder> {
  static Serializer<ListingStruct> get serializer => _$listingStructSerializer;

  String? get listingName;

  String? get listingType;

  String? get region;

  String? get listingImg;

  LocationStruct get listingLocation;

  double? get taxPrice;

  double? get stampDutyPrice;

  double? get legalFeePrice;

  double? get propertyPrice;

  double? get totalPrice;

  String? get listingFloorNumber;

  String? get listingUnitNumber;

  int? get leaseDuration;

  int? get waitingTimeInMonths;

  double? get downPaymentPrice;

  double? get optionFeePrice;

  double? get valuationFeePrice;

  double? get insuranceFeePrice;

  double? get agentFeePrice;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ListingStructBuilder builder) => builder
    ..listingName = ''
    ..listingType = ''
    ..region = ''
    ..listingImg = ''
    ..listingLocation = LocationStructBuilder()
    ..taxPrice = 0.0
    ..stampDutyPrice = 0.0
    ..legalFeePrice = 0.0
    ..propertyPrice = 0.0
    ..totalPrice = 0.0
    ..listingFloorNumber = ''
    ..listingUnitNumber = ''
    ..leaseDuration = 0
    ..waitingTimeInMonths = 0
    ..downPaymentPrice = 0.0
    ..optionFeePrice = 0.0
    ..valuationFeePrice = 0.0
    ..insuranceFeePrice = 0.0
    ..agentFeePrice = 0.0
    ..firestoreUtilData = FirestoreUtilData();

  ListingStruct._();
  factory ListingStruct([void Function(ListingStructBuilder) updates]) =
      _$ListingStruct;
}

ListingStruct createListingStruct({
  String? listingName,
  String? listingType,
  String? region,
  String? listingImg,
  LocationStruct? listingLocation,
  double? taxPrice,
  double? stampDutyPrice,
  double? legalFeePrice,
  double? propertyPrice,
  double? totalPrice,
  String? listingFloorNumber,
  String? listingUnitNumber,
  int? leaseDuration,
  int? waitingTimeInMonths,
  double? downPaymentPrice,
  double? optionFeePrice,
  double? valuationFeePrice,
  double? insuranceFeePrice,
  double? agentFeePrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListingStruct(
      (l) => l
        ..listingName = listingName
        ..listingType = listingType
        ..region = region
        ..listingImg = listingImg
        ..listingLocation =
            listingLocation?.toBuilder() ?? LocationStructBuilder()
        ..taxPrice = taxPrice
        ..stampDutyPrice = stampDutyPrice
        ..legalFeePrice = legalFeePrice
        ..propertyPrice = propertyPrice
        ..totalPrice = totalPrice
        ..listingFloorNumber = listingFloorNumber
        ..listingUnitNumber = listingUnitNumber
        ..leaseDuration = leaseDuration
        ..waitingTimeInMonths = waitingTimeInMonths
        ..downPaymentPrice = downPaymentPrice
        ..optionFeePrice = optionFeePrice
        ..valuationFeePrice = valuationFeePrice
        ..insuranceFeePrice = insuranceFeePrice
        ..agentFeePrice = agentFeePrice
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ListingStruct? updateListingStruct(
  ListingStruct? listing, {
  bool clearUnsetFields = true,
}) =>
    listing != null
        ? (listing.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addListingStructData(
  Map<String, dynamic> firestoreData,
  ListingStruct? listing,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listing == null) {
    return;
  }
  if (listing.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && listing.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listingData = getListingFirestoreData(listing, forFieldValue);
  final nestedData = listingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = listing.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getListingFirestoreData(
  ListingStruct? listing, [
  bool forFieldValue = false,
]) {
  if (listing == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ListingStruct.serializer, listing);

  // Handle nested data for "listingLocation" field.
  addLocationStructData(
      firestoreData, listing.listingLocation, 'listingLocation', forFieldValue);

  // Add any Firestore field values
  listing.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListingListFirestoreData(
  List<ListingStruct>? listings,
) =>
    listings?.map((l) => getListingFirestoreData(l, true)).toList() ?? [];
