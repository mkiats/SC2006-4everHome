import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_application_struct.g.dart';

abstract class LoanApplicationStruct
    implements Built<LoanApplicationStruct, LoanApplicationStructBuilder> {
  static Serializer<LoanApplicationStruct> get serializer =>
      _$loanApplicationStructSerializer;

  String? get id;

  String? get loanID;

  String? get loanAgentID;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LoanApplicationStructBuilder builder) =>
      builder
        ..id = ''
        ..loanID = ''
        ..loanAgentID = ''
        ..firestoreUtilData = FirestoreUtilData();

  LoanApplicationStruct._();
  factory LoanApplicationStruct(
          [void Function(LoanApplicationStructBuilder) updates]) =
      _$LoanApplicationStruct;
}

LoanApplicationStruct createLoanApplicationStruct({
  String? id,
  String? loanID,
  String? loanAgentID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoanApplicationStruct(
      (l) => l
        ..id = id
        ..loanID = loanID
        ..loanAgentID = loanAgentID
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LoanApplicationStruct? updateLoanApplicationStruct(
  LoanApplicationStruct? loanApplication, {
  bool clearUnsetFields = true,
}) =>
    loanApplication != null
        ? (loanApplication.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLoanApplicationStructData(
  Map<String, dynamic> firestoreData,
  LoanApplicationStruct? loanApplication,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loanApplication == null) {
    return;
  }
  if (loanApplication.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && loanApplication.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loanApplicationData =
      getLoanApplicationFirestoreData(loanApplication, forFieldValue);
  final nestedData =
      loanApplicationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = loanApplication.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLoanApplicationFirestoreData(
  LoanApplicationStruct? loanApplication, [
  bool forFieldValue = false,
]) {
  if (loanApplication == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      LoanApplicationStruct.serializer, loanApplication);

  // Add any Firestore field values
  loanApplication.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoanApplicationListFirestoreData(
  List<LoanApplicationStruct>? loanApplications,
) =>
    loanApplications
        ?.map((l) => getLoanApplicationFirestoreData(l, true))
        .toList() ??
    [];
