import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FishedRecord extends FirestoreRecord {
  FishedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fishtime" field.
  DateTime? _fishtime;
  DateTime? get fishtime => _fishtime;
  bool hasFishtime() => _fishtime != null;

  // "fishcate" field.
  String? _fishcate;
  String get fishcate => _fishcate ?? '';
  bool hasFishcate() => _fishcate != null;

  // "fishlenth" field.
  int? _fishlenth;
  int get fishlenth => _fishlenth ?? 0;
  bool hasFishlenth() => _fishlenth != null;

  // "fishgamename" field.
  String? _fishgamename;
  String get fishgamename => _fishgamename ?? '';
  bool hasFishgamename() => _fishgamename != null;

  // "fishround" field.
  int? _fishround;
  int get fishround => _fishround ?? 0;
  bool hasFishround() => _fishround != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "contestref" field.
  DocumentReference? _contestref;
  DocumentReference? get contestref => _contestref;
  bool hasContestref() => _contestref != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _fishtime = snapshotData['fishtime'] as DateTime?;
    _fishcate = snapshotData['fishcate'] as String?;
    _fishlenth = castToType<int>(snapshotData['fishlenth']);
    _fishgamename = snapshotData['fishgamename'] as String?;
    _fishround = castToType<int>(snapshotData['fishround']);
    _userref = snapshotData['userref'] as DocumentReference?;
    _contestref = snapshotData['contestref'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fished');

  static Stream<FishedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FishedRecord.fromSnapshot(s));

  static Future<FishedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FishedRecord.fromSnapshot(s));

  static FishedRecord fromSnapshot(DocumentSnapshot snapshot) => FishedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FishedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FishedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FishedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FishedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFishedRecordData({
  DateTime? fishtime,
  String? fishcate,
  int? fishlenth,
  String? fishgamename,
  int? fishround,
  DocumentReference? userref,
  DocumentReference? contestref,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fishtime': fishtime,
      'fishcate': fishcate,
      'fishlenth': fishlenth,
      'fishgamename': fishgamename,
      'fishround': fishround,
      'userref': userref,
      'contestref': contestref,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class FishedRecordDocumentEquality implements Equality<FishedRecord> {
  const FishedRecordDocumentEquality();

  @override
  bool equals(FishedRecord? e1, FishedRecord? e2) {
    return e1?.fishtime == e2?.fishtime &&
        e1?.fishcate == e2?.fishcate &&
        e1?.fishlenth == e2?.fishlenth &&
        e1?.fishgamename == e2?.fishgamename &&
        e1?.fishround == e2?.fishround &&
        e1?.userref == e2?.userref &&
        e1?.contestref == e2?.contestref &&
        e1?.image == e2?.image;
  }

  @override
  int hash(FishedRecord? e) => const ListEquality().hash([
        e?.fishtime,
        e?.fishcate,
        e?.fishlenth,
        e?.fishgamename,
        e?.fishround,
        e?.userref,
        e?.contestref,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is FishedRecord;
}
