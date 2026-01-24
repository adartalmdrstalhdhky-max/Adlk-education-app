import '../entities/student_stats.dart';

abstract class AnalyticsRepository {
  StudentStats getStudentStats(List<String> lessonIds);
}
