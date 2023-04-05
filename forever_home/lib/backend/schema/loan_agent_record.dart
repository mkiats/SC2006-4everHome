import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_agent_record.g.dart';

abstract class LoanAgentRecord
    implements Built<LoanAgentRecord, LoanAgentRecordBuilder> {
  static Serializer<LoanAgentRecord> get serializer =>
      _$loanAgentRecordSerializer;

  String? get loginId;

  String? get password;

  String? get phoneNumber;

  String? get emailAddress;

  String? get company;

  double? get interestRate;

  String? get accountType;

  double? get rating;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanAgentRecordBuilder builder) => builder
    ..loginId = ''
    ..password = ''
    ..phoneNumber = ''
    ..emailAddress = ''
    ..company = ''
    ..interestRate = 0.0
    ..accountType = ''
    ..rating = 0.0
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LoanAgent');

  static Stream<LoanAgentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanAgentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanAgentRecord._();
  factory LoanAgentRecord([void Function(LoanAgentRecordBuilder) updates]) =
      _$LoanAgentRecord;

  static LoanAgentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanAgentRecordData({
  String? loginId,
  String? password,
  String? phoneNumber,
  String? emailAddress,
  String? company,
  double? interestRate,
  String? accountType,
  double? rating,
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    LoanAgentRecord.serializer,
    LoanAgentRecord(
      (l) => l
        ..loginId = loginId
        ..password = password
        ..phoneNumber = phoneNumber
        ..emailAddress = emailAddress
        ..company = company
        ..interestRate = interestRate
        ..accountType = accountType
        ..rating = rating
        ..name = name,
    ),
  );

  return firestoreData;
}
