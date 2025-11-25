import 'package:get_it/get_it.dart';
import 'package:fruit_hub/core/helpers/object_box.dart';
import 'package:fruit_hub/core/services/app_settings_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final objectBox = await ObjectBoxStore.create();
  getIt.registerSingleton<AppSettingsService>(AppSettingsService(objectBox));
}
