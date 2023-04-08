import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_agent_struct.g.dart';

abstract class LoanAgentStruct
    implements Built<LoanAgentStruct, LoanAgentStructBuilder> {
  static Serializer<LoanAgentStruct> get serializer =>
      _$loanAgentStructSerializer;

  String? get loginId;

  String? get password;

  String? get phoneNumber;

  String? get emailAddress;

  String? get company;

  double? get interestRate;

  String? get accountType;

  double? get rating;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LoanAgentStructBuilder builder) => builder
    ..loginId = ''
    ..password = ''
    ..phoneNumber = ''
    ..emailAddress = ''
    ..company = ''
    ..interestRate = 0.0
    ..accountType = ''
    ..rating = 0.0
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  LoanAgentStruct._();
  factory LoanAgentStruct([void Function(LoanAgentStructBuilder) updates]) =
      _$LoanAgentStruct;
}

LoanAgentStruct createLoanAgentStruct({
  String? loginId,
  String? password,
  String? phoneNumber,
  String? emailAddress,
  String? company,
  double? interestRate,
  String? accountType,
  double? rating,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoanAgentStruct(
      (l) => l
        ..loginId = loginId
        ..password = password
        ..phoneNumber = phoneNumber
        ..emailAddress = emailAddress
        ..company = company
        ..interestRate = interestRate
        ..accountType = accountType
        ..rating = rating
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LoanAgentStruct? updateLoanAgentStruct(
  LoanAgentStruct? loanAgent, {
  bool clearUnsetFields = true,
}) =>
    loanAgent != null
        ? (loanAgent.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLoanAgentStructData(
  Map<String, dynamic> firestoreData,
  LoanAgentStruct? loanAgent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loanAgent == null) {
    return;
  }
  if (loanAgent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && loanAgent.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loanAgentData = getLoanAgentFirestoreData(loanAgent, forFieldValue);
  final nestedData = loanAgentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = loanAgent.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLoanAgentFirestoreData(
  LoanAgentStruct? loanAgent, [
  bool forFieldValue = false,
]) {
  if (loanAgent == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LoanAgentStruct.serializer, loanAgent);

  // Add any Firestore field values
  loanAgent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoanAgentListFirestoreData(
  List<LoanAgentStruct>? loanAgents,
) =>
    loanAgents?.map((l) => getLoanAgentFirestoreData(l, true)).toList() ?? [];
