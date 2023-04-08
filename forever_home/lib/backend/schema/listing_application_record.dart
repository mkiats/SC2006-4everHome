import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listing_application_record.g.dart';

abstract class ListingApplicationRecord
    implements
        Built<ListingApplicationRecord, ListingApplicationRecordBuilder> {
  static Serializer<ListingApplicationRecord> get serializer =>
      _$listingApplicationRecordSerializer;

  @BuiltValueField(wireName: 'ID')
  int? get id;

  int? get listingID;

  int? get loanApplicationID;

  String? get realtorID;

  String? get interiorDesignerID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListingApplicationRecordBuilder builder) =>
      builder
        ..id = 0
        ..listingID = 0
        ..loanApplicationID = 0
        ..realtorID = ''
        ..interiorDesignerID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListingApplication');

  static Stream<ListingApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListingApplicationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListingApplicationRecord._();
  factory ListingApplicationRecord(
          [void Function(ListingApplicationRecordBuilder) updates]) =
      _$ListingApplicationRecord;

  static ListingApplicationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListingApplicationRecordData({
  int? id,
  int? listingID,
  int? loanApplicationID,
  String? realtorID,
  String? interiorDesignerID,
}) {
  final firestoreData = serializers.toFirestore(
    ListingApplicationRecord.serializer,
    ListingApplicationRecord(
      (l) => l
        ..id = id
        ..listingID = listingID
        ..loanApplicationID = loanApplicationID
        ..realtorID = realtorID
        ..interiorDesignerID = interiorDesignerID,
    ),
  );

  return firestoreData;
}
