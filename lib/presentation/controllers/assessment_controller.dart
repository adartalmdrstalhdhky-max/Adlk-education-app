import '../../domain/usecases/evaluate_answer_usecase.dart';
import '../../data/datasources/analytics_local_datasource.dart';

class AssessmentController {
  final EvaluateAnswerUseCase evaluate;
  final AnalyticsLocalDataSource analytics;

  AssessmentController(this.evaluate, this.analytics);

  void assess({
    required bool isCorrect,
    required int responseTimeMs,
    required String lessonId,
  }) {
    final result = evaluate(
      isCorrect: isCorrect,
      responseTimeMs: responseTimeMs,
      lessonId: lessonId,
    );

    analytics.saveAssessment(
      lessonId,
      result.isCorrect,
      result.responseTimeMs,
    );
  }
}
