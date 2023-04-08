import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_struct.g.dart';

abstract class LoanStruct implements Built<LoanStruct, LoanStructBuilder> {
  static Serializer<LoanStruct> get serializer => _$loanStructSerializer;

  double? get principalAmount;

  int? get loanPeriodInMonths;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LoanStructBuilder builder) => builder
    ..principalAmount = 0.0
    ..loanPeriodInMonths = 0
    ..firestoreUtilData = FirestoreUtilData();

  LoanStruct._();
  factory LoanStruct([void Function(LoanStructBuilder) updates]) = _$LoanStruct;
}

LoanStruct createLoanStruct({
  double? principalAmount,
  int? loanPeriodInMonths,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoanStruct(
      (l) => l
        ..principalAmount = principalAmount
        ..loanPeriodInMonths = loanPeriodInMonths
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LoanStruct? updateLoanStruct(
  LoanStruct? loan, {
  bool clearUnsetFields = true,
}) =>
    loan != null
        ? (loan.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLoanStructData(
  Map<String, dynamic> firestoreData,
  LoanStruct? loan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loan == null) {
    return;
  }
  if (loan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && loan.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loanData = getLoanFirestoreData(loan, forFieldValue);
  final nestedData = loanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = loan.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLoanFirestoreData(
  LoanStruct? loan, [
  bool forFieldValue = false,
]) {
  if (loan == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(LoanStruct.serializer, loan);

  // Add any Firestore field values
  loan.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoanListFirestoreData(
  List<LoanStruct>? loans,
) =>
    loans?.map((l) => getLoanFirestoreData(l, true)).toList() ?? [];
