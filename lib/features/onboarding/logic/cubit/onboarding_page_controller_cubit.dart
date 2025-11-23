import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPageControllerCubit extends Cubit<int> {
  OnboardingPageControllerCubit() : super(0);
  void onPageChanged(int index) => emit(index);
}
