import 'dart:async';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'initialisation_counter_record.g.dart';

abstract class InitialisationCounterRecord
    implements
        Built<InitialisationCounterRecord, InitialisationCounterRecordBuilder> {
  static Serializer<InitialisationCounterRecord> get serializer =>
      _$initialisationCounterRecordSerializer;

  @BuiltValueField(wireName: 'Loan')
  int? get loan;

  @BuiltValueField(wireName: 'LoanApplication')
  int? get loanApplication;

  @BuiltValueField(wireName: 'RealtorAgent')
  int? get realtorAgent;

  @BuiltValueField(wireName: 'InteriorDesigner')
  int? get interiorDesigner;

  @BuiltValueField(wireName: 'ListingApplication')
  int? get listingApplication;

  @BuiltValueField(wireName: 'User')
  int? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InitialisationCounterRecordBuilder builder) =>
      builder
        ..loan = 0
        ..loanApplication = 0
        ..realtorAgent = 0
        ..interiorDesigner = 0
        ..listingApplication = 0
        ..user = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InitialisationCounter');

  static Stream<InitialisationCounterRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InitialisationCounterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InitialisationCounterRecord._();
  factory InitialisationCounterRecord(
          [void Function(InitialisationCounterRecordBuilder) updates]) =
      _$InitialisationCounterRecord;

  static InitialisationCounterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInitialisationCounterRecordData({
  int? loan,
  int? loanApplication,
  int? realtorAgent,
  int? interiorDesigner,
  int? listingApplication,
  int? user,
}) {
  final firestoreData = serializers.toFirestore(
    InitialisationCounterRecord.serializer,
    InitialisationCounterRecord(
      (i) => i
        ..loan = loan
        ..loanApplication = loanApplication
        ..realtorAgent = realtorAgent
        ..interiorDesigner = interiorDesigner
        ..listingApplication = listingApplication
        ..user = user,
    ),
  );

  return firestoreData;
}
