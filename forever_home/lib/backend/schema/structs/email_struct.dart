import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'email_struct.g.dart';

abstract class EmailStruct implements Built<EmailStruct, EmailStructBuilder> {
  static Serializer<EmailStruct> get serializer => _$emailStructSerializer;

  String? get recipientAddress;

  String? get senderAddress;

  String? get subject;

  String? get message;

  DateTime? get dateTime;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(EmailStructBuilder builder) => builder
    ..recipientAddress = ''
    ..senderAddress = ''
    ..subject = ''
    ..message = ''
    ..firestoreUtilData = FirestoreUtilData();

  EmailStruct._();
  factory EmailStruct([void Function(EmailStructBuilder) updates]) =
      _$EmailStruct;
}

EmailStruct createEmailStruct({
  String? recipientAddress,
  String? senderAddress,
  String? subject,
  String? message,
  DateTime? dateTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmailStruct(
      (e) => e
        ..recipientAddress = recipientAddress
        ..senderAddress = senderAddress
        ..subject = subject
        ..message = message
        ..dateTime = dateTime
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

EmailStruct? updateEmailStruct(
  EmailStruct? email, {
  bool clearUnsetFields = true,
}) =>
    email != null
        ? (email.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addEmailStructData(
  Map<String, dynamic> firestoreData,
  EmailStruct? email,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (email == null) {
    return;
  }
  if (email.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && email.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final emailData = getEmailFirestoreData(email, forFieldValue);
  final nestedData = emailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = email.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getEmailFirestoreData(
  EmailStruct? email, [
  bool forFieldValue = false,
]) {
  if (email == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(EmailStruct.serializer, email);

  // Add any Firestore field values
  email.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmailListFirestoreData(
  List<EmailStruct>? emails,
) =>
    emails?.map((e) => getEmailFirestoreData(e, true)).toList() ?? [];
