class AssessmentResult {
  final bool isCorrect;
  final int responseTime; // بالثواني
  final String weaknessTag;

  AssessmentResult({
    required this.isCorrect,
    required this.responseTime,
    required this.weaknessTag,
  });
}

class AssessmentEngine {
  /// تحليل إجابة الطالب
  AssessmentResult evaluate({
    required String studentAnswer,
    required String correctAnswer,
    required int responseTime,
    required String lessonId,
  }) {
    bool correct = studentAnswer == correctAnswer;

    String weakness = _detectWeakness(
      correct: correct,
      responseTime: responseTime,
      lessonId: lessonId,
    );

    return AssessmentResult(
      isCorrect: correct,
      responseTime: responseTime,
      weaknessTag: weakness,
    );
  }

  /// تحديد نقطة الضعف
  String _detectWeakness({
    required bool correct,
    required int responseTime,
    required String lessonId,
  }) {
    if (!correct) {
      return "concept_error_$lessonId";
    }

    if (responseTime > 8) {
      return "slow_response_$lessonId";
    }

    return "mastered_$lessonId";
  }
}
