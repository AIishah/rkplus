import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoryCommentsRecord extends FirestoreRecord {
  StoryCommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "storyAssociation" field.
  DocumentReference? _storyAssociation;
  DocumentReference? get storyAssociation => _storyAssociation;
  bool hasStoryAssociation() => _storyAssociation != null;

  // "commentUser" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _storyAssociation = snapshotData['storyAssociation'] as DocumentReference?;
    _commentUser = snapshotData['commentUser'] as DocumentReference?;
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('storyComments');

  static Stream<StoryCommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoryCommentsRecord.fromSnapshot(s));

  static Future<StoryCommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoryCommentsRecord.fromSnapshot(s));

  static StoryCommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StoryCommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoryCommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoryCommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoryCommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoryCommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoryCommentsRecordData({
  DateTime? timePosted,
  DocumentReference? storyAssociation,
  DocumentReference? commentUser,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timePosted': timePosted,
      'storyAssociation': storyAssociation,
      'commentUser': commentUser,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoryCommentsRecordDocumentEquality
    implements Equality<StoryCommentsRecord> {
  const StoryCommentsRecordDocumentEquality();

  @override
  bool equals(StoryCommentsRecord? e1, StoryCommentsRecord? e2) {
    return e1?.timePosted == e2?.timePosted &&
        e1?.storyAssociation == e2?.storyAssociation &&
        e1?.commentUser == e2?.commentUser &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(StoryCommentsRecord? e) => const ListEquality()
      .hash([e?.timePosted, e?.storyAssociation, e?.commentUser, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is StoryCommentsRecord;
}
