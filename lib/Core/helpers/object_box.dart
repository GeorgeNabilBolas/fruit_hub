import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:fruit_hub/objectbox.g.dart';
import 'package:fruit_hub/core/entities/app_settings.dart';

class ObjectBoxStore {
  ObjectBoxStore._create(this._store) {
    _appSettingsBox = _store.box<AppSettings>();
  }
  late final Store _store;
  late final Box<AppSettings> _appSettingsBox;

  static Future<ObjectBoxStore> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(docsDir.path, "fruit_hub_db"));
    return ObjectBoxStore._create(store);
  }

  Box<AppSettings> get appSettingsBox => _appSettingsBox;
}
