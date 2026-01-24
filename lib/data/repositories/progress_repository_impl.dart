import '../../domain/repositories/progress_repository.dart';
import '../datasources/progress_local_datasource.dart';

class ProgressRepositoryImpl implements ProgressRepository {
  final ProgressLocalDataSource local;

  ProgressRepositoryImpl(this.local);

  @override
  int getProgress(String materialKey) {
    return local.getProgress(materialKey);
  }

  @override
  void saveProgress(String materialKey, int index) {
    local.saveProgress(materialKey, index);
  }
}
