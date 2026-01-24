import '../../domain/entities/student_stats.dart';
import '../../domain/repositories/analytics_repository.dart';
import '../datasources/analytics_local_datasource.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  final AnalyticsLocalDataSource local;

  AnalyticsRepositoryImpl(this.local);

  @override
  StudentStats getStudentStats(List<String> lessonIds) {
    final mistakes = <String, int>{};
    final avgTimes = <String, int>{};

    for (final id in lessonIds) {
      final data = local.getLessonStats(id);
      mistakes[id] = data['mistakes'];
      avgTimes[id] = data['avgTime'];
    }

    return StudentStats(
      mistakesPerLesson: mistakes,
      averageResponseTime: avgTimes,
    );
  }
}
