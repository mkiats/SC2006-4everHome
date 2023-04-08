import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'interior_designer_record.g.dart';

abstract class InteriorDesignerRecord
    implements Built<InteriorDesignerRecord, InteriorDesignerRecordBuilder> {
  static Serializer<InteriorDesignerRecord> get serializer =>
      _$interiorDesignerRecordSerializer;

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

  static void _initializeBuilder(InteriorDesignerRecordBuilder builder) =>
      builder
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
      FirebaseFirestore.instance.collection('InteriorDesigner');

  static Stream<InteriorDesignerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InteriorDesignerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InteriorDesignerRecord._();
  factory InteriorDesignerRecord(
          [void Function(InteriorDesignerRecordBuilder) updates]) =
      _$InteriorDesignerRecord;

  static InteriorDesignerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInteriorDesignerRecordData({
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
    InteriorDesignerRecord.serializer,
    InteriorDesignerRecord(
      (i) => i
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
