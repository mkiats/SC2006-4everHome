// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_application_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingApplicationRecord> _$listingApplicationRecordSerializer =
    new _$ListingApplicationRecordSerializer();

class _$ListingApplicationRecordSerializer
    implements StructuredSerializer<ListingApplicationRecord> {
  @override
  final Iterable<Type> types = const [
    ListingApplicationRecord,
    _$ListingApplicationRecord
  ];
  @override
  final String wireName = 'ListingApplicationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListingApplicationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('ID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listingID;
    if (value != null) {
      result
        ..add('listingID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.loanApplicationID;
    if (value != null) {
      result
        ..add('loanApplicationID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.realtorID;
    if (value != null) {
      result
        ..add('realtorID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interiorDesignerID;
    if (value != null) {
      result
        ..add('interiorDesignerID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ListingApplicationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingApplicationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ID':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listingID':
          result.listingID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'loanApplicationID':
          result.loanApplicationID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'realtorID':
          result.realtorID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interiorDesignerID':
          result.interiorDesignerID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ListingApplicationRecord extends ListingApplicationRecord {
  @override
  final int? id;
  @override
  final int? listingID;
  @override
  final int? loanApplicationID;
  @override
  final String? realtorID;
  @override
  final String? interiorDesignerID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListingApplicationRecord(
          [void Function(ListingApplicationRecordBuilder)? updates]) =>
      (new ListingApplicationRecordBuilder()..update(updates))._build();

  _$ListingApplicationRecord._(
      {this.id,
      this.listingID,
      this.loanApplicationID,
      this.realtorID,
      this.interiorDesignerID,
      this.ffRef})
      : super._();

  @override
  ListingApplicationRecord rebuild(
          void Function(ListingApplicationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingApplicationRecordBuilder toBuilder() =>
      new ListingApplicationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingApplicationRecord &&
        id == other.id &&
        listingID == other.listingID &&
        loanApplicationID == other.loanApplicationID &&
        realtorID == other.realtorID &&
        interiorDesignerID == other.interiorDesignerID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listingID.hashCode);
    _$hash = $jc(_$hash, loanApplicationID.hashCode);
    _$hash = $jc(_$hash, realtorID.hashCode);
    _$hash = $jc(_$hash, interiorDesignerID.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingApplicationRecord')
          ..add('id', id)
          ..add('listingID', listingID)
          ..add('loanApplicationID', loanApplicationID)
          ..add('realtorID', realtorID)
          ..add('interiorDesignerID', interiorDesignerID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListingApplicationRecordBuilder
    implements
        Builder<ListingApplicationRecord, ListingApplicationRecordBuilder> {
  _$ListingApplicationRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _listingID;
  int? get listingID => _$this._listingID;
  set listingID(int? listingID) => _$this._listingID = listingID;

  int? _loanApplicationID;
  int? get loanApplicationID => _$this._loanApplicationID;
  set loanApplicationID(int? loanApplicationID) =>
      _$this._loanApplicationID = loanApplicationID;

  String? _realtorID;
  String? get realtorID => _$this._realtorID;
  set realtorID(String? realtorID) => _$this._realtorID = realtorID;

  String? _interiorDesignerID;
  String? get interiorDesignerID => _$this._interiorDesignerID;
  set interiorDesignerID(String? interiorDesignerID) =>
      _$this._interiorDesignerID = interiorDesignerID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListingApplicationRecordBuilder() {
    ListingApplicationRecord._initializeBuilder(this);
  }

  ListingApplicationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _listingID = $v.listingID;
      _loanApplicationID = $v.loanApplicationID;
      _realtorID = $v.realtorID;
      _interiorDesignerID = $v.interiorDesignerID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingApplicationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingApplicationRecord;
  }

  @override
  void update(void Function(ListingApplicationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingApplicationRecord build() => _build();

  _$ListingApplicationRecord _build() {
    final _$result = _$v ??
        new _$ListingApplicationRecord._(
            id: id,
            listingID: listingID,
            loanApplicationID: loanApplicationID,
            realtorID: realtorID,
            interiorDesignerID: interiorDesignerID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
