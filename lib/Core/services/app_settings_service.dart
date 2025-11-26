import '../entities/app_settings.dart';
import '../helpers/app_logger.dart';
import '../helpers/object_box.dart';

class AppSettingsService {
  AppSettingsService(this._objectBoxStore);
  final ObjectBoxStore _objectBoxStore;

  bool isOnboardingSeen() {
    AppLogger.info("isOnboardingSeen ${_objectBoxStore.appSettingsBox.getAll()}");
    final appSettings = _getSettings();
    return appSettings.isOnboardingSeen;
  }

  void setOnboardingSeen() {
    AppLogger.info("setOnboardingSeen ${_objectBoxStore.appSettingsBox.getAll()}");
    final appSettings = _getSettings();
    appSettings.isOnboardingSeen = true;
    _objectBoxStore.appSettingsBox.put(appSettings);
  }

  AppSettings _getSettings() {
    final appSettingsBox = _objectBoxStore.appSettingsBox;
    if (appSettingsBox.getAll().isEmpty) {
      appSettingsBox.put(AppSettings());
    }
    return appSettingsBox.getAll().first;
  }
}
