import '../../domain/entities/lesson.dart';

class LessonModel extends Lesson {
  LessonModel({
    required super.id,
    required super.title,
    required super.content,
    required super.options,
    required super.correctIndex,
  });

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      options: List<String>.from(json['options']),
      correctIndex: json['correctIndex'],
    );
  }
}
