import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/user_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  factory LoginState.initial() = _LoginInitial;
  factory LoginState.loading() = _LoginLoading;
  factory LoginState.success(UserModel user) = _LoginSuccess;
  factory LoginState.failure(String message) = _LoginFailure;
}
