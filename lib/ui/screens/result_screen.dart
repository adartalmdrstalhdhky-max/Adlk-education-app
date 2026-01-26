import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';
import '../../services/audio/text_to_speech_service.dart';
import 'exercise_screen.dart';

class ResultScreen extends StatelessWidget {
  final LearningOutcome outcome;
  final List<Map<String, dynamic>> exercises;
  final int currentIndex;

  ResultScreen({
    super.key,
    required this.outcome,
    required this.exercises,
    required this.currentIndex,
  });

  final TextToSpeechService tts = TextToSpeechService();

  @override
  Widget build(BuildContext context) {
    final bool canAdvance =
        outcome.nextAction == "advance_next" &&
        currentIndex + 1 < exercises.length;

    // نطق النتيجة
    tts.speak(outcome.isCorrect ? "أحسنت" : "حاول مرة أخرى");

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                outcome.isCorrect
                    ? Icons.emoji_events
                    : Icons.refresh,
                size: 100,
                color:
                    outcome.isCorrect ? Colors.green : Colors.orange,
              ),
              const SizedBox(height: 20),
              Text(
                outcome.isCorrect ? "أحسنت 👏" : "حاول مرة أخرى 💪",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text("النقاط: ${outcome.pointsEarned}",
                  style: const TextStyle(fontSize: 18)),
              Text(
                "الإتقان: ${outcome.analytics.accuracy.toStringAsFixed(1)}%",
                style: const TextStyle(fontSize: 18),
              ),
              if (outcome.badge != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "🏅 ${outcome.badge!.description}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    canAdvance ? "التالي ▶" : "إعادة المحاولة 🔁",
                    style: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ExerciseScreen(
                          exercises: exercises,
                          currentIndex:
                              canAdvance
                                  ? currentIndex + 1
                                  : currentIndex,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
