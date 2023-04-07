import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_struct.g.dart';

abstract class UserStruct implements Built<UserStruct, UserStructBuilder> {
  static Serializer<UserStruct> get serializer => _$userStructSerializer;

  String? get loginId;

  String? get password;

  String? get phoneNumber;

  String? get name;

  String? get emailAddress;

  @BuiltValueField(wireName: 'photo_URL')
  String? get photoURL;

  String? get accountType;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(UserStructBuilder builder) => builder
    ..loginId = ''
    ..password = ''
    ..phoneNumber = ''
    ..name = ''
    ..emailAddress = ''
    ..photoURL = ''
    ..accountType = ''
    ..firestoreUtilData = FirestoreUtilData();

  UserStruct._();
  factory UserStruct([void Function(UserStructBuilder) updates]) = _$UserStruct;
}

UserStruct createUserStruct({
  String? loginId,
  String? password,
  String? phoneNumber,
  String? name,
  String? emailAddress,
  String? photoURL,
  String? accountType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      (u) => u
        ..loginId = loginId
        ..password = password
        ..phoneNumber = phoneNumber
        ..name = name
        ..emailAddress = emailAddress
        ..photoURL = photoURL
        ..accountType = accountType
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
}) =>
    user != null
        ? (user.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && user.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = user.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(UserStruct.serializer, user);

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((u) => getUserFirestoreData(u, true)).toList() ?? [];
