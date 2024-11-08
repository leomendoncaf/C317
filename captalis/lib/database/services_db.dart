import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'DBFirestore.dart';

class ServicesDB {
  late FirebaseFirestore db;
  final FirebaseStorage storage = FirebaseStorage.instance;

  ServicesDB() {
    _startRepository();
  }

  _startRepository() async {
    await _startFirestore();
  }

  _startFirestore() {
    db = DBFirestore.get();
  }

  //USUARIO

  Future<void> saveMarker(String name, double nota) async {
    final userDocRef = db.collection('dados');
    await userDocRef.add({
      'name': name,
      'nota': nota,
    });
  }

  getMakers(context) async {
    final CollectionReference dadosRef = db.collection('dados');

    final QuerySnapshot querySnapshot = await dadosRef.get();

    return querySnapshot;
  }
}
