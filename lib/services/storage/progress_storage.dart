class StudentProgress {
  final String lessonId;
  final int attempts;
  final int correctAnswers;
  final int totalTime; // بالثواني
  final DateTime lastUpdated;

  StudentProgress({
    required this.lessonId,
    required this.attempts,
    required this.correctAnswers,
    required this.totalTime,
    required this.lastUpdated,
  });

  Map<String, dynamic> toJson() {
    return {
      "lessonId": lessonId,
      "attempts": attempts,
      "correctAnswers": correctAnswers,
      "totalTime": totalTime,
      "lastUpdated": lastUpdated.toIso8601String(),
    };
  }

  factory StudentProgress.fromJson(Map<String, dynamic> json) {
    return StudentProgress(
      lessonId: json["lessonId"],
      attempts: json["attempts"],
      correctAnswers: json["correctAnswers"],
      totalTime: json["totalTime"],
      lastUpdated: DateTime.parse(json["lastUpdated"]),
    );
  }
}

class ProgressStorage {
  final Map<String, StudentProgress> _memoryStore = {};

  /// حفظ أو تحديث تقدم الطالب
  void saveProgress({
    required String lessonId,
    required bool isCorrect,
    required int responseTime,
  }) {
    final existing = _memoryStore[lessonId];

    if (existing == null) {
      _memoryStore[lessonId] = StudentProgress(
        lessonId: lessonId,
        attempts: 1,
        correctAnswers: isCorrect ? 1 : 0,
        totalTime: responseTime,
        lastUpdated: DateTime.now(),
      );
    } else {
      _memoryStore[lessonId] = StudentProgress(
        lessonId: lessonId,
        attempts: existing.attempts + 1,
        correctAnswers:
            existing.correctAnswers + (isCorrect ? 1 : 0),
        totalTime: existing.totalTime + responseTime,
        lastUpdated: DateTime.now(),
      );
    }
  }

  /// جلب تقدم درس معين
  StudentProgress? getProgress(String lessonId) {
    return _memoryStore[lessonId];
  }

  /// جلب كل التقدم
  List<StudentProgress> getAllProgress() {
    return _memoryStore.values.toList();
  }
}
