class PronunciationEvaluator {
  bool isCorrect({
    required String expected,
    required String spoken,
  }) {
    return spoken.trim().contains(expected.trim());
  }
}
