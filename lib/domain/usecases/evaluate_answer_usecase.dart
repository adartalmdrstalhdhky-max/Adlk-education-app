import '../entities/assessment_result.dart';

class EvaluateAnswerUseCase {
  AssessmentResult call({
    required bool isCorrect,
    required int responseTimeMs,
    required String lessonId,
  }) {
    return AssessmentResult(
      isCorrect: isCorrect,
      responseTimeMs: responseTimeMs,
      lessonId: lessonId,
    );
  }
}
