import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_result.dart';
import '../data/repo/auth_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authRepo) : super(const SignupState.initial());
  final AuthRepo _authRepo;

  Future<void> signup(String name, String email, String password) async {
    emit(const SignupState.loading());
    final result = await _authRepo.createUserWithEmailAndPassword(
      name: name,
      email: email,
      password: password,
    );
    result.when(
      success: (userModel) => emit(SignupState.success(userModel)),
      failure: (error) => emit(SignupState.failure(error.message)),
    );
  }
}
