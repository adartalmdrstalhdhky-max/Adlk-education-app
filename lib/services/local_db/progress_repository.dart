import 'local_db_service.dart';

class ProgressRepository {
  final _db = LocalDbService();

  int getReadingProgress() {
    return _db.read('reading_progress') ?? 0;
  }

  void saveReadingProgress(int index) {
    _db.save('reading_progress', index);
  }
}
