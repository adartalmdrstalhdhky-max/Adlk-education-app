import 'package:hive/hive.dart';

class AnalyticsLocalDataSource {
  final Box box = Hive.box('progressBox');

  void saveAssessment(String lessonId, bool correct, int timeMs) {
    final mistakes = box.get('mistakes_$lessonId', defaultValue: 0);
    final totalTime = box.get('time_$lessonId', defaultValue: 0);
    final attempts = box.get('attempts_$lessonId', defaultValue: 0);

    if (!correct) {
      box.put('mistakes_$lessonId', mistakes + 1);
    }

    box.put('time_$lessonId', totalTime + timeMs);
    box.put('attempts_$lessonId', attempts + 1);
  }

  Map<String, dynamic> getLessonStats(String lessonId) {
    final attempts = box.get('attempts_$lessonId', defaultValue: 1);
    final time = box.get('time_$lessonId', defaultValue: 0);

    return {
      'mistakes': box.get('mistakes_$lessonId', defaultValue: 0),
      'avgTime': (time / attempts).round(),
    };
  }
}
