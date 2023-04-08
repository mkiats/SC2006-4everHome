import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_record.g.dart';

abstract class LoanRecord implements Built<LoanRecord, LoanRecordBuilder> {
  static Serializer<LoanRecord> get serializer => _$loanRecordSerializer;

  double? get principalAmount;

  int? get loanPeriodInMonths;

  int? get id;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanRecordBuilder builder) => builder
    ..principalAmount = 0.0
    ..loanPeriodInMonths = 0
    ..id = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Loan');

  static Stream<LoanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanRecord._();
  factory LoanRecord([void Function(LoanRecordBuilder) updates]) = _$LoanRecord;

  static LoanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanRecordData({
  double? principalAmount,
  int? loanPeriodInMonths,
  int? id,
}) {
  final firestoreData = serializers.toFirestore(
    LoanRecord.serializer,
    LoanRecord(
      (l) => l
        ..principalAmount = principalAmount
        ..loanPeriodInMonths = loanPeriodInMonths
        ..id = id,
    ),
  );

  return firestoreData;
}
