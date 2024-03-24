import 'package:vibration/vibration.dart';

class VibrationHelper {
  // normal vibrate
  static Future<void> vibrate({
    int duration = 500,
    List<int> pattern = const [],
    int repeat = -1,
    List<int> intensities = const [],
    int amplitude = -1,
  }) async {
    if (!await isSupport()) return;
    await Vibration.vibrate(
      duration: duration,
      pattern: pattern,
      intensities: intensities,
      repeat: repeat,
      amplitude: amplitude,
    );
  }

  static Future<bool> isSupport() async {
    final bool? hasVibrator = await Vibration.hasVibrator();
    return hasVibrator == true;
  }

  static Future<bool> isCustomSupport() async {
    final bool? hasVibrator = await Vibration.hasCustomVibrationsSupport();
    return hasVibrator == true;
  }
}
