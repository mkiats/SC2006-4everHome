import 'dart:async';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'realtor_agent_record.g.dart';

abstract class RealtorAgentRecord
    implements Built<RealtorAgentRecord, RealtorAgentRecordBuilder> {
  static Serializer<RealtorAgentRecord> get serializer =>
      _$realtorAgentRecordSerializer;

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

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RealtorAgentRecordBuilder builder) => builder
    ..loginId = ''
    ..password = ''
    ..accountType = ''
    ..name = ''
    ..phoneNumber = ''
    ..emailAddress = ''
    ..rating = 0.0
    ..company = ''
    ..yearsOfExperience = 0
    ..profilePhoto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RealtorAgent');

  static Stream<RealtorAgentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RealtorAgentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RealtorAgentRecord._();
  factory RealtorAgentRecord(
          [void Function(RealtorAgentRecordBuilder) updates]) =
      _$RealtorAgentRecord;

  static RealtorAgentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRealtorAgentRecordData({
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
}) {
  final firestoreData = serializers.toFirestore(
    RealtorAgentRecord.serializer,
    RealtorAgentRecord(
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
        ..profilePhoto = profilePhoto,
    ),
  );

  return firestoreData;
}
