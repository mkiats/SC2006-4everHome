import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'realtor_agent_struct.g.dart';

abstract class RealtorAgentStruct
    implements Built<RealtorAgentStruct, RealtorAgentStructBuilder> {
  static Serializer<RealtorAgentStruct> get serializer =>
      _$realtorAgentStructSerializer;

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

  static void _initializeBuilder(RealtorAgentStructBuilder builder) => builder
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

  RealtorAgentStruct._();
  factory RealtorAgentStruct(
          [void Function(RealtorAgentStructBuilder) updates]) =
      _$RealtorAgentStruct;
}

RealtorAgentStruct createRealtorAgentStruct({
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
    RealtorAgentStruct(
      (r) => r
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

RealtorAgentStruct? updateRealtorAgentStruct(
  RealtorAgentStruct? realtorAgent, {
  bool clearUnsetFields = true,
}) =>
    realtorAgent != null
        ? (realtorAgent.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRealtorAgentStructData(
  Map<String, dynamic> firestoreData,
  RealtorAgentStruct? realtorAgent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (realtorAgent == null) {
    return;
  }
  if (realtorAgent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && realtorAgent.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final realtorAgentData =
      getRealtorAgentFirestoreData(realtorAgent, forFieldValue);
  final nestedData =
      realtorAgentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = realtorAgent.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRealtorAgentFirestoreData(
  RealtorAgentStruct? realtorAgent, [
  bool forFieldValue = false,
]) {
  if (realtorAgent == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(RealtorAgentStruct.serializer, realtorAgent);

  // Add any Firestore field values
  realtorAgent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRealtorAgentListFirestoreData(
  List<RealtorAgentStruct>? realtorAgents,
) =>
    realtorAgents?.map((r) => getRealtorAgentFirestoreData(r, true)).toList() ??
    [];
