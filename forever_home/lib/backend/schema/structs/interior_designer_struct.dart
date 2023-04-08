import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'interior_designer_struct.g.dart';

abstract class InteriorDesignerStruct
    implements Built<InteriorDesignerStruct, InteriorDesignerStructBuilder> {
  static Serializer<InteriorDesignerStruct> get serializer =>
      _$interiorDesignerStructSerializer;

  String? get loginId;

  String? get password;

  String? get accountType;

  String? get name;

  String? get phoneNumber;

  String? get emailAddress;

  double? get rating;

  String? get company;

  int? get yearsOfExperience;

  String? get profilePhoto;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(InteriorDesignerStructBuilder builder) =>
      builder
        ..loginId = ''
        ..password = ''
        ..accountType = ''
        ..name = ''
        ..phoneNumber = ''
        ..emailAddress = ''
        ..rating = 0.0
        ..company = ''
        ..yearsOfExperience = 0
        ..profilePhoto = ''
        ..firestoreUtilData = FirestoreUtilData();

  InteriorDesignerStruct._();
  factory InteriorDesignerStruct(
          [void Function(InteriorDesignerStructBuilder) updates]) =
      _$InteriorDesignerStruct;
}

InteriorDesignerStruct createInteriorDesignerStruct({
  String? loginId,
  String? password,
  String? accountType,
  String? name,
  String? phoneNumber,
  String? emailAddress,
  double? rating,
  String? company,
  int? yearsOfExperience,
  String? profilePhoto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InteriorDesignerStruct(
      (i) => i
        ..loginId = loginId
        ..password = password
        ..accountType = accountType
        ..name = name
        ..phoneNumber = phoneNumber
        ..emailAddress = emailAddress
        ..rating = rating
        ..company = company
        ..yearsOfExperience = yearsOfExperience
        ..profilePhoto = profilePhoto
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

InteriorDesignerStruct? updateInteriorDesignerStruct(
  InteriorDesignerStruct? interiorDesigner, {
  bool clearUnsetFields = true,
}) =>
    interiorDesigner != null
        ? (interiorDesigner.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addInteriorDesignerStructData(
  Map<String, dynamic> firestoreData,
  InteriorDesignerStruct? interiorDesigner,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (interiorDesigner == null) {
    return;
  }
  if (interiorDesigner.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && interiorDesigner.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final interiorDesignerData =
      getInteriorDesignerFirestoreData(interiorDesigner, forFieldValue);
  final nestedData =
      interiorDesignerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = interiorDesigner.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getInteriorDesignerFirestoreData(
  InteriorDesignerStruct? interiorDesigner, [
  bool forFieldValue = false,
]) {
  if (interiorDesigner == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      InteriorDesignerStruct.serializer, interiorDesigner);

  // Add any Firestore field values
  interiorDesigner.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInteriorDesignerListFirestoreData(
  List<InteriorDesignerStruct>? interiorDesigners,
) =>
    interiorDesigners
        ?.map((i) => getInteriorDesignerFirestoreData(i, true))
        .toList() ??
    [];
