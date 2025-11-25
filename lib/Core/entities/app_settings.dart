import 'package:objectbox/objectbox.dart';

@Entity()
class AppSettings {
  @Id()
  int id;
  bool isOnboardingSeen;

  AppSettings({
    this.id = 0,
    this.isOnboardingSeen = false,
  });
}
