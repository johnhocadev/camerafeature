import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameRoundDataRecord extends FirestoreRecord {
  GameRoundDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "whatFish" field.
  String? _whatFish;
  String get whatFish => _whatFish ?? '';
  bool hasWhatFish() => _whatFish != null;

  // "howLong" field.
  double? _howLong;
  double get howLong => _howLong ?? 0.0;
  bool hasHowLong() => _howLong != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "gameref" field.
  DocumentReference? _gameref;
  DocumentReference? get gameref => _gameref;
  bool hasGameref() => _gameref != null;

  // "round" field.
  int? _round;
  int get round => _round ?? 0;
  bool hasRound() => _round != null;

  // "roundTime" field.
  DateTime? _roundTime;
  DateTime? get roundTime => _roundTime;
  bool hasRoundTime() => _roundTime != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  void _initializeFields() {
    _whatFish = snapshotData['whatFish'] as String?;
    _howLong = castToType<double>(snapshotData['howLong']);
    _photo = snapshotData['photo'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _gameref = snapshotData['gameref'] as DocumentReference?;
    _round = castToType<int>(snapshotData['round']);
    _roundTime = snapshotData['roundTime'] as DateTime?;
    _userName = snapshotData['userName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GameRoundData');

  static Stream<GameRoundDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameRoundDataRecord.fromSnapshot(s));

  static Future<GameRoundDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameRoundDataRecord.fromSnapshot(s));

  static GameRoundDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameRoundDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameRoundDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameRoundDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameRoundDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameRoundDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameRoundDataRecordData({
  String? whatFish,
  double? howLong,
  String? photo,
  DateTime? time,
  DocumentReference? userref,
  DocumentReference? gameref,
  int? round,
  DateTime? roundTime,
  String? userName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'whatFish': whatFish,
      'howLong': howLong,
      'photo': photo,
      'time': time,
      'userref': userref,
      'gameref': gameref,
      'round': round,
      'roundTime': roundTime,
      'userName': userName,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameRoundDataRecordDocumentEquality
    implements Equality<GameRoundDataRecord> {
  const GameRoundDataRecordDocumentEquality();

  @override
  bool equals(GameRoundDataRecord? e1, GameRoundDataRecord? e2) {
    return e1?.whatFish == e2?.whatFish &&
        e1?.howLong == e2?.howLong &&
        e1?.photo == e2?.photo &&
        e1?.time == e2?.time &&
        e1?.userref == e2?.userref &&
        e1?.gameref == e2?.gameref &&
        e1?.round == e2?.round &&
        e1?.roundTime == e2?.roundTime &&
        e1?.userName == e2?.userName;
  }

  @override
  int hash(GameRoundDataRecord? e) => const ListEquality().hash([
        e?.whatFish,
        e?.howLong,
        e?.photo,
        e?.time,
        e?.userref,
        e?.gameref,
        e?.round,
        e?.roundTime,
        e?.userName
      ]);

  @override
  bool isValidKey(Object? o) => o is GameRoundDataRecord;
}
