// lib/core/models/quran_lesson.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class QuranLesson {
  final String keyId;
  final String lessonsId;
  final String title;
  final List<String> imageUrls;
  final List<String> cartoonUrls;

  const QuranLesson({
    required this.keyId,
    required this.lessonsId,
    required this.title,
    required this.imageUrls,
    required this.cartoonUrls,
  });

  factory QuranLesson.fromMap(Map<String, dynamic> m) => QuranLesson(
    keyId: m['KeyID'] ?? '',
    lessonsId: m['LessonsID'] ?? '',
    title: m['LessonTitle'] ?? '',
    imageUrls: List<String>.from(m['LessonImageURL'] ?? const []),
    cartoonUrls: List<String>.from(m['CartoonVideoURL'] ?? const []),
  );
}

class QuranRepo {
  static const path = 'assets/subjects/quran/lessons.json';
  static Future<List<QuranLesson>> load() async {
    final raw = await rootBundle.loadString(path);
    final List data = jsonDecode(raw);
    return data.map((e) => QuranLesson.fromMap(e)).toList();
  }
}
