class RecommendationEngine {
  /// تحديد الخطوة التعليمية التالية للطالب
  String nextStep({
    required String weaknessTag,
    required String currentLessonId,
  }) {
    if (weaknessTag.startsWith("concept_error")) {
      return "repeat_$currentLessonId";
    }

    if (weaknessTag.startsWith("slow_response")) {
      return "practice_$currentLessonId";
    }

    if (weaknessTag.startsWith("mastered")) {
      return "advance_next";
    }

    return "review_$currentLessonId";
  }
}
