import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';
import 'result_screen.dart';

class ExerciseScreen extends StatelessWidget {
  final Map<String, dynamic> exercise;

  ExerciseScreen({super.key, required this.exercise});

  final LearningController controller = LearningController();

  @override
  Widget build(BuildContext context) {
    final List options = exercise["options"];

    return Scaffold(
      appBar: AppBar(title: const Text("تمرين")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise["question"],
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  child: Text(option),
                  onPressed: () {
                    final outcome = controller.processAnswer(
                      lessonId: exercise["lesson_id"],
                      studentAnswer: option,
                      correctAnswer: exercise["correct_answer"],
                      responseTime: 4,
                      totalLessonsCompleted: 1,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ResultScreen(outcome: outcome),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
