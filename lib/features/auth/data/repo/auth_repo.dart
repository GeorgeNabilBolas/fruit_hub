import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthRepo {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepo(this._firebaseAuth, this._firestore);

  Future<void> login({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    User? user = userCredential.user;
    if (user != null) {
      await user.updateDisplayName(name);

      UserModel userModel = UserModel(
        uid: user.uid,
        email: email,
        name: name,
      );

      await _firestore.collection('users').doc(user.uid).set(userModel.toJson());
    }
  }
}
