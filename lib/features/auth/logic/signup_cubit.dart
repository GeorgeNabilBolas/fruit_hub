import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repo/auth_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepo _authRepo;

  SignupCubit(this._authRepo) : super(SignupInitial());

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignupLoading());
    try {
      await _authRepo.signup(
        name: name,
        email: email,
        password: password,
      );
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailure(e.toString()));
    }
  }
}
