import '../assessment/assessment_engine.dart';
import '../recommendation/recommendation_engine.dart';
import '../analytics/analytics_engine.dart';
import '../gamification/gamification_engine.dart';
import '../../services/storage/progress_storage.dart';

class LearningOutcome {
  final bool isCorrect;
  final String nextAction;
  final int pointsEarned;
  final Reward? badge;
  final LessonAnalytics analytics;

  LearningOutcome({
    required this.isCorrect,
    required this.nextAction,
    required this.pointsEarned,
    required this.analytics,
    this.badge,
  });
}

class LearningController {
  final AssessmentEngine _assessmentEngine = AssessmentEngine();
  final RecommendationEngine _recommendationEngine =
      RecommendationEngine();
  final AnalyticsEngine _analyticsEngine = AnalyticsEngine();
  final GamificationEngine _gamificationEngine =
      GamificationEngine();
  final ProgressStorage _progressStorage = ProgressStorage();

  /// المعالجة الكاملة لإجابة الطالب
  LearningOutcome processAnswer({
    required String lessonId,
    required String studentAnswer,
    required String correctAnswer,
    required int responseTime,
    required int totalLessonsCompleted,
  }) {
    // 1️⃣ تقييم الإجابة
    final assessment = _assessmentEngine.evaluate(
      studentAnswer: studentAnswer,
      correctAnswer: correctAnswer,
      responseTime: responseTime,
      lessonId: lessonId,
    );

    // 2️⃣ حفظ التقدم
    _progressStorage.saveProgress(
      lessonId: lessonId,
      isCorrect: assessment.isCorrect,
      responseTime: responseTime,
    );

    // 3️⃣ التحليلات
    final progressList = _progressStorage.getAllProgress();
    final analyticsList =
        _analyticsEngine.analyze(progressList);

    final lessonAnalytics = analyticsList.firstWhere(
      (a) => a.lessonId == lessonId,
    );

    // 4️⃣ التوصية
    final nextStep = _recommendationEngine.nextStep(
      weaknessTag: assessment.weaknessTag,
      currentLessonId: lessonId,
    );

    // 5️⃣ التحفيز
    final points = _gamificationEngine.calculatePoints(
      isCorrect: assessment.isCorrect,
      responseTime: responseTime,
    );

    final badge = _gamificationEngine.assignBadge(
      accuracy: lessonAnalytics.accuracy,
      totalLessonsCompleted: totalLessonsCompleted,
    );

    return LearningOutcome(
      isCorrect: assessment.isCorrect,
      nextAction: nextStep,
      pointsEarned: points,
      badge: badge,
      analytics: lessonAnalytics,
    );
  }
}
