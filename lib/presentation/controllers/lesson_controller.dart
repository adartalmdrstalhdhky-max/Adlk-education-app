import '../../domain/entities/lesson.dart';
import '../../domain/usecases/get_lessons_usecase.dart';
import '../../domain/repositories/progress_repository.dart';

class LessonController {
  final GetLessonsUseCase getLessons;
  final ProgressRepository progressRepo;

  LessonController(this.getLessons, this.progressRepo);

  Future<List<Lesson>> load(String materialKey) {
    return getLessons(materialKey);
  }

  int getProgress(String materialKey) {
    return progressRepo.getProgress(materialKey);
  }

  void saveProgress(String materialKey, int index) {
    progressRepo.saveProgress(materialKey, index);
  }
}
