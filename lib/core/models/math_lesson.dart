// lib/core/models/math_lesson.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class MathLesson {
  final String keyId;           // KeyID
  final String lessonsId;       // LessonsID
  final String title;           // LessonTitle
  final String description;     // E_Description
  final String question;        // G_Question
  final List<String> options;   // H_Answer.options
  final String correct;         // H_Answer.correct
  final String interaction;     // I_Interaction
  final String link;            // J_Link
  final List<String> keywords;  // K_Keywords
  final List<String> imageUrls;     // LessonImageURL (مخفي حالياً)
  final List<String> cartoonUrls;   // CartoonVideoURL (مخفي حالياً)

  const MathLesson({
    required this.keyId,
    required this.lessonsId,
    required this.title,
    required this.description,
    required this.question,
    required this.options,
    required this.correct,
    required this.interaction,
    required this.link,
    required this.keywords,
    required this.imageUrls,
    required this.cartoonUrls,
  });

  factory MathLesson.fromMap(Map<String, dynamic> m) => MathLesson(
    keyId: m['KeyID'] ?? '',
    lessonsId: m['LessonsID'] ?? '',
    title: m['LessonTitle'] ?? '',
    description: m['E_Description'] ?? '',
    question: m['G_Question'] ?? '',
    options: List<String>.from(m['H_Answer']?['options'] ?? const []),
    correct: (m['H_Answer']?['correct'] ?? '').toString(),
    interaction: m['I_Interaction'] ?? '',
    link: m['J_Link'] ?? '',
    keywords: List<String>.from(m['K_Keywords'] ?? const []),
    imageUrls: List<String>.from(m['LessonImageURL'] ?? const []),
    cartoonUrls: List<String>.from(m['CartoonVideoURL'] ?? const []),
  );
}

class MathRepo {
  static const path = 'assets/subjects/math/lessons.json';
  static Future<List<MathLesson>> load() async {
    final raw = await rootBundle.loadString(path);
    final List data = jsonDecode(raw);
    return data.map((e) => MathLesson.fromMap(e)).toList();
  }
}
