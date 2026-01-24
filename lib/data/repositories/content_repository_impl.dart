import '../../domain/entities/lesson.dart';
import '../../domain/repositories/content_repository.dart';
import '../datasources/content_local_datasource.dart';

class ContentRepositoryImpl implements ContentRepository {
  final ContentLocalDataSource localDataSource;

  ContentRepositoryImpl(this.localDataSource);

  @override
  Future<List<Lesson>> getLessons(String materialKey) async {
    return localDataSource.loadLessons(
      'assets/content/$materialKey.json',
    );
  }
}
