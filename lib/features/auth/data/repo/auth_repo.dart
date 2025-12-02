import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/errors/exception_handler.dart';
import '../models/user_model.dart';

class AuthRepo {
  AuthRepo(this._firestore);
  final FirebaseFirestore _firestore;

  Future<ApiResult<UserModel>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final UserModel userModel = UserModel.fromFirebaseUser(credential.user!);
      return ApiResult.success(userModel);
    } catch (e) {
      return ApiResult.failure(ExceptionHandler.handleException(e));
    }
  }

  Future<ApiResult<UserModel>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await credential.user!.updateDisplayName(name);
      final UserModel userModel = UserModel.fromFirebaseUser(credential.user!);
      await _firestore.collection('users').doc(credential.user!.uid).set(userModel.toJson());
      return ApiResult.success(userModel);
    } catch (e) {
      return ApiResult.failure(ExceptionHandler.handleException(e));
    }
  }
}
