import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'location_struct.g.dart';

abstract class LocationStruct
    implements Built<LocationStruct, LocationStructBuilder> {
  static Serializer<LocationStruct> get serializer =>
      _$locationStructSerializer;

  String? get postalCode;

  String? get addressName;

  LatLng? get latlong;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LocationStructBuilder builder) => builder
    ..postalCode = ''
    ..addressName = ''
    ..firestoreUtilData = FirestoreUtilData();

  LocationStruct._();
  factory LocationStruct([void Function(LocationStructBuilder) updates]) =
      _$LocationStruct;
}

LocationStruct createLocationStruct({
  String? postalCode,
  String? addressName,
  LatLng? latlong,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationStruct(
      (l) => l
        ..postalCode = postalCode
        ..addressName = addressName
        ..latlong = latlong
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LocationStruct? updateLocationStruct(
  LocationStruct? location, {
  bool clearUnsetFields = true,
}) =>
    location != null
        ? (location.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLocationStructData(
  Map<String, dynamic> firestoreData,
  LocationStruct? location,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (location == null) {
    return;
  }
  if (location.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && location.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationData = getLocationFirestoreData(location, forFieldValue);
  final nestedData = locationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = location.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLocationFirestoreData(
  LocationStruct? location, [
  bool forFieldValue = false,
]) {
  if (location == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LocationStruct.serializer, location);

  // Add any Firestore field values
  location.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationListFirestoreData(
  List<LocationStruct>? locations,
) =>
    locations?.map((l) => getLocationFirestoreData(l, true)).toList() ?? [];
