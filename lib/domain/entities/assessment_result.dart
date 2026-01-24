class AssessmentResult {
  final bool isCorrect;
  final int responseTimeMs;
  final String lessonId;

  AssessmentResult({
    required this.isCorrect,
    required this.responseTimeMs,
    required this.lessonId,
  });
}
