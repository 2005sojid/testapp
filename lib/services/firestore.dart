import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  Future<void> addNote(String note) {
    return notes.add({'note': note, 'timestamp': Timestamp.now()});
  }

  Stream<QuerySnapshot> allNotes(){
    return notes.orderBy('timestamp', descending: true).snapshots();
  }

  Future<void> updateNote(String id,String note){
    return notes.doc(id).update({
      "note" : note,
      "timestamp" : Timestamp.now()
    });
  }

  Future<void> deleteNote(String id){
    return notes.doc(id).delete();
  }
}
