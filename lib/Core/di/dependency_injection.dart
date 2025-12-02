import 'package:get_it/get_it.dart';
import 'package:fruit_hub/core/helpers/object_box.dart';
import 'package:fruit_hub/core/services/app_settings_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/features/auth/data/repo/auth_repo.dart';
import 'package:fruit_hub/features/auth/logic/login_cubit.dart';
import 'package:fruit_hub/features/auth/logic/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final objectBox = await ObjectBoxStore.create();
  getIt.registerSingleton<AppSettingsService>(AppSettingsService(objectBox));

  // Auth
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
