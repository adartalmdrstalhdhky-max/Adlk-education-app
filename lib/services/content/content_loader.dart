import 'dart:convert';
import 'package:flutter/services.dart';

class ContentLoader {
  Future<List<Map<String, dynamic>>> loadExercises() async {
    final String jsonString = await rootBundle.loadString(
      'assets/content/grade1/reading/exercises.json',
    );

    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List exercises = jsonData["exercises"];

    return exercises.cast<Map<String, dynamic>>();
  }
}
