class AppDurations {
  static const Duration sec3 = Duration(seconds: 3);
  static Future<void> delaySec3() async => await Future.delayed(sec3);
}
