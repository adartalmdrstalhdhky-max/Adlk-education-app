class ReadingLesson {
  final String id;
  final String title;
  final String content;
  final List<String> options;
  final int correctIndex;

  ReadingLesson({
    required this.id,
    required this.title,
    required this.content,
    required this.options,
    required this.correctIndex,
  });
}
