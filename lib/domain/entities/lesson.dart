class Lesson {
  final String id;
  final String title;
  final String content;
  final List<String> options;
  final int correctIndex;

  Lesson({
    required this.id,
    required this.title,
    required this.content,
    required this.options,
    required this.correctIndex,
  });
}
