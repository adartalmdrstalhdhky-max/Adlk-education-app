import 'package:hive/hive.dart';

class RecommendationLocalDataSource {
  final Box box = Hive.box('progressBox');

  RecommendationData readLessonData(String lessonId) {
    final mistakes = box.get('mistakes_$lessonId', defaultValue: 0);
    final avgTime = box.get('time_$lessonId', defaultValue: 0);
    return RecommendationData(mistakes, avgTime);
  }
}

class RecommendationData {
  final int mistakes;
  final int avgTime;

  RecommendationData(this.mistakes, this.avgTime);
}
