import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel {
  final String note;
  final String uid;
  NoteModel({
    required this.note,
    required this.uid,
  });
  static NoteModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return NoteModel(
      note: snapshot["note"],
      uid: snapshot["uid"],
    );
  }

  Map<String, dynamic> toJson() => {"note": note, "uid": uid};
}
