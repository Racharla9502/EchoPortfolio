import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailRecord extends FirestoreRecord {
  EmailRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mail" field.
  String? _mail;
  String get mail => _mail ?? '';
  bool hasMail() => _mail != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  bool hasPhonenumber() => _phonenumber != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "sub" field.
  String? _sub;
  String get sub => _sub ?? '';
  bool hasSub() => _sub != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _mail = snapshotData['mail'] as String?;
    _phonenumber = snapshotData['phonenumber'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _sub = snapshotData['sub'] as String?;
    _body = snapshotData['body'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('email');

  static Stream<EmailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmailRecord.fromSnapshot(s));

  static Future<EmailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmailRecord.fromSnapshot(s));

  static EmailRecord fromSnapshot(DocumentSnapshot snapshot) => EmailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmailRecordData({
  String? name,
  String? mail,
  String? phonenumber,
  DateTime? time,
  String? sub,
  String? body,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'mail': mail,
      'phonenumber': phonenumber,
      'time': time,
      'sub': sub,
      'body': body,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmailRecordDocumentEquality implements Equality<EmailRecord> {
  const EmailRecordDocumentEquality();

  @override
  bool equals(EmailRecord? e1, EmailRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.mail == e2?.mail &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.time == e2?.time &&
        e1?.sub == e2?.sub &&
        e1?.body == e2?.body;
  }

  @override
  int hash(EmailRecord? e) => const ListEquality()
      .hash([e?.name, e?.mail, e?.phonenumber, e?.time, e?.sub, e?.body]);

  @override
  bool isValidKey(Object? o) => o is EmailRecord;
}
