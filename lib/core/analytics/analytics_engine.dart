import '../../services/storage/progress_storage.dart';

class LessonAnalytics {
  final String lessonId;
  final double accuracy; // نسبة الإتقان %
  final double averageResponseTime;
  final bool needsIntervention;

  LessonAnalytics({
    required this.lessonId,
    required this.accuracy,
    required this.averageResponseTime,
    required this.needsIntervention,
  });
}

class AnalyticsEngine {
  /// تحليل تقدم الطالب لكل درس
  List<LessonAnalytics> analyze(
    List<StudentProgress> progressList,
  ) {
    return progressList.map((progress) {
      final accuracy =
          progress.correctAnswers / progress.attempts * 100;

      final avgTime =
          progress.totalTime / progress.attempts;

      final needsHelp =
          accuracy < 60 || avgTime > 8;

      return LessonAnalytics(
        lessonId: progress.lessonId,
        accuracy: accuracy,
        averageResponseTime: avgTime,
        needsIntervention: needsHelp,
      );
    }).toList();
  }
}
