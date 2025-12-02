import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_result.dart';
import '../data/repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginState.initial());
  final AuthRepo _authRepo;

  Future<void> login(String email, String password) async {
    emit(LoginState.loading());
    final result = await _authRepo.signInWithEmailAndPassword(email: email, password: password);
    result.when(
      success: (userModel) => emit(LoginState.success(userModel)),
      failure: (error) => emit(LoginState.failure(error.message)),
    );
  }
}
