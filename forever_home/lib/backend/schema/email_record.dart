import 'dart:async';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'email_record.g.dart';

abstract class EmailRecord implements Built<EmailRecord, EmailRecordBuilder> {
  static Serializer<EmailRecord> get serializer => _$emailRecordSerializer;

  String? get recipientAddress;

  String? get senderAddress;

  String? get subject;

  String? get message;

  DateTime? get dateTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmailRecordBuilder builder) => builder
    ..recipientAddress = ''
    ..senderAddress = ''
    ..subject = ''
    ..message = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Email');

  static Stream<EmailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmailRecord._();
  factory EmailRecord([void Function(EmailRecordBuilder) updates]) =
      _$EmailRecord;

  static EmailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmailRecordData({
  String? recipientAddress,
  String? senderAddress,
  String? subject,
  String? message,
  DateTime? dateTime,
}) {
  final firestoreData = serializers.toFirestore(
    EmailRecord.serializer,
    EmailRecord(
      (e) => e
        ..recipientAddress = recipientAddress
        ..senderAddress = senderAddress
        ..subject = subject
        ..message = message
        ..dateTime = dateTime,
    ),
  );

  return firestoreData;
}
