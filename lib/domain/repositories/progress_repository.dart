abstract class ProgressRepository {
  int getProgress(String materialKey);
  void saveProgress(String materialKey, int index);
}
