import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "by" field.
  String? _by;
  String get by => _by ?? '';
  bool hasBy() => _by != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "description1" field.
  String? _description1;
  String get description1 => _description1 ?? '';
  bool hasDescription1() => _description1 != null;

  // "description2" field.
  String? _description2;
  String get description2 => _description2 ?? '';
  bool hasDescription2() => _description2 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _by = snapshotData['by'] as String?;
    _mainImage = snapshotData['mainImage'] as String?;
    _link = snapshotData['link'] as String?;
    _description1 = snapshotData['description1'] as String?;
    _description2 = snapshotData['description2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  String? name,
  String? description,
  String? by,
  String? mainImage,
  String? link,
  String? description1,
  String? description2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'by': by,
      'mainImage': mainImage,
      'link': link,
      'description1': description1,
      'description2': description2,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.by == e2?.by &&
        e1?.mainImage == e2?.mainImage &&
        e1?.link == e2?.link &&
        e1?.description1 == e2?.description1 &&
        e1?.description2 == e2?.description2;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.by,
        e?.mainImage,
        e?.link,
        e?.description1,
        e?.description2
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
