import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_application_record.g.dart';

abstract class LoanApplicationRecord
    implements Built<LoanApplicationRecord, LoanApplicationRecordBuilder> {
  static Serializer<LoanApplicationRecord> get serializer =>
      _$loanApplicationRecordSerializer;

  String? get loanAgentID;

  int? get id;

  int? get loanID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanApplicationRecordBuilder builder) =>
      builder
        ..loanAgentID = ''
        ..id = 0
        ..loanID = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LoanApplication');

  static Stream<LoanApplicationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanApplicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanApplicationRecord._();
  factory LoanApplicationRecord(
          [void Function(LoanApplicationRecordBuilder) updates]) =
      _$LoanApplicationRecord;

  static LoanApplicationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanApplicationRecordData({
  String? loanAgentID,
  int? id,
  int? loanID,
}) {
  final firestoreData = serializers.toFirestore(
    LoanApplicationRecord.serializer,
    LoanApplicationRecord(
      (l) => l
        ..loanAgentID = loanAgentID
        ..id = id
        ..loanID = loanID,
    ),
  );

  return firestoreData;
}
