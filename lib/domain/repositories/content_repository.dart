import '../entities/lesson.dart';

abstract class ContentRepository {
  Future<List<Lesson>> getLessons(String materialKey);
}
