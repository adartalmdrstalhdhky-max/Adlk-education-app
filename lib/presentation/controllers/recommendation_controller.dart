import '../../domain/usecases/recommend_next_lesson_usecase.dart';
import '../../domain/entities/recommendation.dart';

class RecommendationController {
  final RecommendNextLessonUseCase useCase;

  RecommendationController(this.useCase);

  Recommendation decide({
    required String currentLessonId,
    required String nextLessonId,
  }) {
    return useCase(
      currentLessonId: currentLessonId,
      nextLessonId: nextLessonId,
    );
  }
}
