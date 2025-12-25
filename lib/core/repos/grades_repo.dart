// lib/core/repos/grades_repo.dart
class Grade {
  String gradeId, studentId, lessonId;
  double score, maxScore;
  String completionStatus; // passed|failed|in_progress
  Grade({
    required this.gradeId,
    required this.studentId,
    required this.lessonId,
    required this.score,
    required this.maxScore,
    required this.completionStatus,
  });
  double get percentage => maxScore == 0 ? 0 : (score / maxScore) * 100;
}

abstract class GradesRepo {
  Future<List<Grade>> all();                       // مهم: هذا السطر
  Future<List<Grade>> byStudent(String studentId);
  Future<void> importCsv(String assetPath);
  Future<void> save(Grade g);
}
