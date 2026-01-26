import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';

class ResultScreen extends StatelessWidget {
  final LearningOutcome outcome;

  const ResultScreen({super.key, required this.outcome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("نتيجة التمرين")),
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
            Text("النقاط المكتسبة: ${outcome.pointsEarned}"),
            Text("الإجراء التالي: ${outcome.nextAction}"),
            Text(
              "نسبة الإتقان: ${outcome.analytics.accuracy.toStringAsFixed(1)}%",
            ),
            if (outcome.badge != null)
              Text("🏅 شارة: ${outcome.badge!.description}"),
          ],
        ),
      ),
    );
  }
}
