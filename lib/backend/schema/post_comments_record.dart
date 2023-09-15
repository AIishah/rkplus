import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostCommentsRecord extends FirestoreRecord {
  PostCommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _post = snapshotData['post'] as DocumentReference?;
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('postComments');

  static Stream<PostCommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostCommentsRecord.fromSnapshot(s));

  static Future<PostCommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostCommentsRecord.fromSnapshot(s));

  static PostCommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostCommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostCommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostCommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostCommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostCommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostCommentsRecordData({
  DateTime? timePosted,
  DocumentReference? user,
  DocumentReference? post,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timePosted': timePosted,
      'user': user,
      'post': post,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostCommentsRecordDocumentEquality
    implements Equality<PostCommentsRecord> {
  const PostCommentsRecordDocumentEquality();

  @override
  bool equals(PostCommentsRecord? e1, PostCommentsRecord? e2) {
    return e1?.timePosted == e2?.timePosted &&
        e1?.user == e2?.user &&
        e1?.post == e2?.post &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(PostCommentsRecord? e) =>
      const ListEquality().hash([e?.timePosted, e?.user, e?.post, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is PostCommentsRecord;
}