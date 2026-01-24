import '../entities/recommendation.dart';
import '../../data/datasources/recommendation_local_datasource.dart';

class RecommendNextLessonUseCase {
  final RecommendationLocalDataSource local;

  RecommendNextLessonUseCase(this.local);

  Recommendation call({
    required String currentLessonId,
    required String nextLessonId,
  }) {
    final data = local.readLessonData(currentLessonId);

    if (data.mistakes >= 2 || data.avgTime > 4000) {
      return Recommendation(
        nextLessonId: currentLessonId,
        reason: 'تقوية بسبب أخطاء أو بطء في الاستجابة',
      );
    }

    return Recommendation(
      nextLessonId: nextLessonId,
      reason: 'جاهز للانتقال للدرس التالي',
    );
  }
}
