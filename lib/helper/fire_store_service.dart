import 'dart:typed_data';

import 'package:careernow/model/notemodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class FirestoreService {
  // FirestoreService({required this.uid});
  // final String uid;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> addNote(
    String noteData,
  
  ) async {
    String res = "some error pccured";
    try {
      String categoryId = const Uuid().v1();
      NoteModel note = NoteModel(note: noteData, uid: categoryId);
      _firestore.collection('Notes').doc(categoryId).set(note.toJson());
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
