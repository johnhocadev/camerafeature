import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "memo" field.
  String? _memo;
  String get memo => _memo ?? '';
  bool hasMemo() => _memo != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "fishing_grounds" field.
  String? _fishingGrounds;
  String get fishingGrounds => _fishingGrounds ?? '';
  bool hasFishingGrounds() => _fishingGrounds != null;

  // "like_fish" field.
  List<String>? _likeFish;
  List<String> get likeFish => _likeFish ?? const [];
  bool hasLikeFish() => _likeFish != null;

  // "topLank" field.
  String? _topLank;
  String get topLank => _topLank ?? '';
  bool hasTopLank() => _topLank != null;

  // "interestContest" field.
  List<DocumentReference>? _interestContest;
  List<DocumentReference> get interestContest => _interestContest ?? const [];
  bool hasInterestContest() => _interestContest != null;

  // "entryContest" field.
  List<DocumentReference>? _entryContest;
  List<DocumentReference> get entryContest => _entryContest ?? const [];
  bool hasEntryContest() => _entryContest != null;

  // "participateContest" field.
  List<DocumentReference>? _participateContest;
  List<DocumentReference> get participateContest =>
      _participateContest ?? const [];
  bool hasParticipateContest() => _participateContest != null;

  // "Certified" field.
  bool? _certified;
  bool get certified => _certified ?? false;
  bool hasCertified() => _certified != null;

  // "certifiedIMG" field.
  String? _certifiedIMG;
  String get certifiedIMG => _certifiedIMG ?? '';
  bool hasCertifiedIMG() => _certifiedIMG != null;

  // "interest_contest2" field.
  List<DocumentReference>? _interestContest2;
  List<DocumentReference> get interestContest2 => _interestContest2 ?? const [];
  bool hasInterestContest2() => _interestContest2 != null;

  // "enteryContest2" field.
  List<DocumentReference>? _enteryContest2;
  List<DocumentReference> get enteryContest2 => _enteryContest2 ?? const [];
  bool hasEnteryContest2() => _enteryContest2 != null;

  // "participateContest2" field.
  List<DocumentReference>? _participateContest2;
  List<DocumentReference> get participateContest2 =>
      _participateContest2 ?? const [];
  bool hasParticipateContest2() => _participateContest2 != null;

  // "LikeShip" field.
  List<DocumentReference>? _likeShip;
  List<DocumentReference> get likeShip => _likeShip ?? const [];
  bool hasLikeShip() => _likeShip != null;

  // "Likesea" field.
  List<DocumentReference>? _likesea;
  List<DocumentReference> get likesea => _likesea ?? const [];
  bool hasLikesea() => _likesea != null;

  // "LikeLodge" field.
  List<DocumentReference>? _likeLodge;
  List<DocumentReference> get likeLodge => _likeLodge ?? const [];
  bool hasLikeLodge() => _likeLodge != null;

  // "likeTicket" field.
  List<DocumentReference>? _likeTicket;
  List<DocumentReference> get likeTicket => _likeTicket ?? const [];
  bool hasLikeTicket() => _likeTicket != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  bool hasNickname() => _nickname != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _memo = snapshotData['memo'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _role = snapshotData['role'] as String?;
    _fishingGrounds = snapshotData['fishing_grounds'] as String?;
    _likeFish = getDataList(snapshotData['like_fish']);
    _topLank = snapshotData['topLank'] as String?;
    _interestContest = getDataList(snapshotData['interestContest']);
    _entryContest = getDataList(snapshotData['entryContest']);
    _participateContest = getDataList(snapshotData['participateContest']);
    _certified = snapshotData['Certified'] as bool?;
    _certifiedIMG = snapshotData['certifiedIMG'] as String?;
    _interestContest2 = getDataList(snapshotData['interest_contest2']);
    _enteryContest2 = getDataList(snapshotData['enteryContest2']);
    _participateContest2 = getDataList(snapshotData['participateContest2']);
    _likeShip = getDataList(snapshotData['LikeShip']);
    _likesea = getDataList(snapshotData['Likesea']);
    _likeLodge = getDataList(snapshotData['LikeLodge']);
    _likeTicket = getDataList(snapshotData['likeTicket']);
    _nickname = snapshotData['nickname'] as String?;
    _like = getDataList(snapshotData['like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActive,
  String? status,
  String? memo,
  String? password,
  LatLng? location,
  String? role,
  String? fishingGrounds,
  String? topLank,
  bool? certified,
  String? certifiedIMG,
  String? nickname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lastActive': lastActive,
      'status': status,
      'memo': memo,
      'password': password,
      'location': location,
      'role': role,
      'fishing_grounds': fishingGrounds,
      'topLank': topLank,
      'Certified': certified,
      'certifiedIMG': certifiedIMG,
      'nickname': nickname,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActive == e2?.lastActive &&
        e1?.status == e2?.status &&
        e1?.memo == e2?.memo &&
        e1?.password == e2?.password &&
        e1?.location == e2?.location &&
        e1?.role == e2?.role &&
        e1?.fishingGrounds == e2?.fishingGrounds &&
        listEquality.equals(e1?.likeFish, e2?.likeFish) &&
        e1?.topLank == e2?.topLank &&
        listEquality.equals(e1?.interestContest, e2?.interestContest) &&
        listEquality.equals(e1?.entryContest, e2?.entryContest) &&
        listEquality.equals(e1?.participateContest, e2?.participateContest) &&
        e1?.certified == e2?.certified &&
        e1?.certifiedIMG == e2?.certifiedIMG &&
        listEquality.equals(e1?.interestContest2, e2?.interestContest2) &&
        listEquality.equals(e1?.enteryContest2, e2?.enteryContest2) &&
        listEquality.equals(e1?.participateContest2, e2?.participateContest2) &&
        listEquality.equals(e1?.likeShip, e2?.likeShip) &&
        listEquality.equals(e1?.likesea, e2?.likesea) &&
        listEquality.equals(e1?.likeLodge, e2?.likeLodge) &&
        listEquality.equals(e1?.likeTicket, e2?.likeTicket) &&
        e1?.nickname == e2?.nickname &&
        listEquality.equals(e1?.like, e2?.like);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActive,
        e?.status,
        e?.memo,
        e?.password,
        e?.location,
        e?.role,
        e?.fishingGrounds,
        e?.likeFish,
        e?.topLank,
        e?.interestContest,
        e?.entryContest,
        e?.participateContest,
        e?.certified,
        e?.certifiedIMG,
        e?.interestContest2,
        e?.enteryContest2,
        e?.participateContest2,
        e?.likeShip,
        e?.likesea,
        e?.likeLodge,
        e?.likeTicket,
        e?.nickname,
        e?.like
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
