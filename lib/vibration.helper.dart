import 'package:flutter_vibrate/flutter_vibrate.dart';

class VibrationHelper {
  // normal vibrate
  static Future<void> vibrate() async {
    if (!await Vibrate.canVibrate) return;
    await Vibrate.vibrate();
  }

  // normal vibrate with pauses
  static Future<void> vibrateWithPauses([
    List<Duration> pauses = const [
      Duration(milliseconds: 500),
      Duration(milliseconds: 1000),
      Duration(milliseconds: 500),
    ],
  ]) async {
    if (!await Vibrate.canVibrate) return;
    Vibrate.vibrateWithPauses(pauses);
  }

  // haptic feedback
  static Future<void> haptic({
    feedBack = FeedbackType.impact,
  }) async {
    if (!await Vibrate.canVibrate) return;
    Vibrate.feedback(feedBack);
  }
}
