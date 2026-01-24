import '../../domain/entities/student_stats.dart';
import '../../domain/repositories/analytics_repository.dart';

class AnalyticsController {
  final AnalyticsRepository repository;

  AnalyticsController(this.repository);

  StudentStats loadStats(List<String> lessonIds) {
    return repository.getStudentStats(lessonIds);
  }
}
