import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      await _authRepo.login(email: email, password: password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}
