import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';
import 'result_screen.dart';

class LessonScreen extends StatelessWidget {
  LessonScreen({super.key});

  final LearningController controller = LearningController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("درس القراءة")),
      body: Center(
        child: ElevatedButton(
          child: const Text("ابدأ تمرين حرف الألف"),
          onPressed: () {
            final outcome = controller.processAnswer(
              lessonId: "r1_l1",
              studentAnswer: "ا",
              correctAnswer: "ا",
              responseTime: 4,
              totalLessonsCompleted: 1,
            );

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ResultScreen(outcome: outcome),
              ),
            );
          },
        ),
      ),
    );
  }
}
