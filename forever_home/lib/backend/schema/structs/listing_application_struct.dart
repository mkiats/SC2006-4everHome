import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'listing_application_struct.g.dart';

abstract class ListingApplicationStruct
    implements
        Built<ListingApplicationStruct, ListingApplicationStructBuilder> {
  static Serializer<ListingApplicationStruct> get serializer =>
      _$listingApplicationStructSerializer;

  String? get id;

  String? get userID;

  String? get loanApplicationID;

  String? get realtorID;

  String? get interiorDesignerID;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ListingApplicationStructBuilder builder) =>
      builder
        ..id = ''
        ..userID = ''
        ..loanApplicationID = ''
        ..realtorID = ''
        ..interiorDesignerID = ''
        ..firestoreUtilData = FirestoreUtilData();

  ListingApplicationStruct._();
  factory ListingApplicationStruct(
          [void Function(ListingApplicationStructBuilder) updates]) =
      _$ListingApplicationStruct;
}

ListingApplicationStruct createListingApplicationStruct({
  String? id,
  String? userID,
  String? loanApplicationID,
  String? realtorID,
  String? interiorDesignerID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListingApplicationStruct(
      (l) => l
        ..id = id
        ..userID = userID
        ..loanApplicationID = loanApplicationID
        ..realtorID = realtorID
        ..interiorDesignerID = interiorDesignerID
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ListingApplicationStruct? updateListingApplicationStruct(
  ListingApplicationStruct? listingApplication, {
  bool clearUnsetFields = true,
}) =>
    listingApplication != null
        ? (listingApplication.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addListingApplicationStructData(
  Map<String, dynamic> firestoreData,
  ListingApplicationStruct? listingApplication,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listingApplication == null) {
    return;
  }
  if (listingApplication.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && listingApplication.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listingApplicationData =
      getListingApplicationFirestoreData(listingApplication, forFieldValue);
  final nestedData =
      listingApplicationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = listingApplication.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getListingApplicationFirestoreData(
  ListingApplicationStruct? listingApplication, [
  bool forFieldValue = false,
]) {
  if (listingApplication == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      ListingApplicationStruct.serializer, listingApplication);

  // Add any Firestore field values
  listingApplication.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListingApplicationListFirestoreData(
  List<ListingApplicationStruct>? listingApplications,
) =>
    listingApplications
        ?.map((l) => getListingApplicationFirestoreData(l, true))
        .toList() ??
    [];
