import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/lesson_model.dart';

class ContentLocalDataSource {
  Future<List<LessonModel>> loadLessons(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List decoded = json.decode(jsonString);
    return decoded.map((e) => LessonModel.fromJson(e)).toList();
  }
}
