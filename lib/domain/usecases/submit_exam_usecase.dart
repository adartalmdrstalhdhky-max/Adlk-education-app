import '../entities/exam.dart';

class SubmitExamUseCase {
  double call(Exam exam, Map<String, int> answers) {
    int correct = 0;
    for (final q in exam.questions) {
      if (answers[q.id] == q.correctIndex) correct++;
    }
    return (correct / exam.questions.length) * 100;
  }
}
