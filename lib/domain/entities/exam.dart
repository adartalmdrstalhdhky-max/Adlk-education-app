class ExamQuestion {
  final String id;
  final String question;
  final List<String> options;
  final int correctIndex;

  ExamQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}

class Exam {
  final String id;
  final List<ExamQuestion> questions;

  Exam({required this.id, required this.questions});
}
