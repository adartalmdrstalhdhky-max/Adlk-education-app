import 'package:flutter/material.dart';
import 'exercise_screen.dart';

class LessonScreen extends StatelessWidget {
  LessonScreen({super.key});

  final Map<String, dynamic> sampleExercise = {
    "lesson_id": "r1_l1",
    "question": "اختر حرف الألف",
    "options": ["ا", "ب", "ت"],
    "correct_answer": "ا"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("درس القراءة")),
      body: Center(
        child: ElevatedButton(
          child: const Text("ابدأ التمرين"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    ExerciseScreen(exercise: sampleExercise),
              ),
            );
          },
        ),
      ),
    );
  }
}
