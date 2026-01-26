import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';
import 'exercise_screen.dart';

class ResultScreen extends StatelessWidget {
  final LearningOutcome outcome;
  final List<Map<String, dynamic>> exercises;
  final int currentIndex;

  const ResultScreen({
    super.key,
    required this.outcome,
    required this.exercises,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool canAdvance =
        outcome.nextAction == "advance_next" &&
        currentIndex + 1 < exercises.length;

    return Scaffold(
      appBar: AppBar(title: const Text("النتيجة")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              outcome.isCorrect ? "إجابة صحيحة 🎉" : "إجابة خاطئة ❌",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text("النقاط: ${outcome.pointsEarned}"),
            Text(
              "الإتقان: ${outcome.analytics.accuracy.toStringAsFixed(1)}%",
            ),
            if (outcome.badge != null)
              Text("🏅 ${outcome.badge!.description}"),
            const Spacer(),
            ElevatedButton(
              child: Text(
                canAdvance ? "التالي ▶" : "إعادة المحاولة 🔁",
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ExerciseScreen(
                      exercises: exercises,
                      currentIndex:
                          canAdvance ? currentIndex + 1 : currentIndex,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
