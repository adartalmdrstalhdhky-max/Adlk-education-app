import '../entities/lesson.dart';
import '../repositories/content_repository.dart';

class GetLessonsUseCase {
  final ContentRepository repository;

  GetLessonsUseCase(this.repository);

  Future<List<Lesson>> call(String materialKey) {
    return repository.getLessons(materialKey);
  }
}
