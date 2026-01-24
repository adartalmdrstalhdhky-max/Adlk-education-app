import 'package:hive/hive.dart';

class ProgressLocalDataSource {
  final Box box = Hive.box('progressBox');

  int getProgress(String key) {
    return box.get(key, defaultValue: 0);
  }

  void saveProgress(String key, int value) {
    box.put(key, value);
  }
}
