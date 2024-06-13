import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  static Future<void> saveUser(String name, String email, String uid) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'email': email,
        'name': name,
        'createdAt':
            FieldValue.serverTimestamp(), // Optional: adding a timestamp
      });
    } catch (e) {
      print('Error saving user to Firestore: $e');
    }
  }
}
