import 'package:flutter/material.dart';
import '../../core/learning/learning_controller.dart';
import '../../services/audio/text_to_speech_service.dart';
import 'result_screen.dart';

class ExerciseScreen extends StatelessWidget {
  final List<Map<String, dynamic>> exercises;
  final int currentIndex;

  ExerciseScreen({
    super.key,
    required this.exercises,
    required this.currentIndex,
  });

  final LearningController controller = LearningController();
  final TextToSpeechService tts = TextToSpeechService();

  @override
  Widget build(BuildContext context) {
    final exercise = exercises[currentIndex];
    final List options = exercise["options"];

    // نطق السؤال
    tts.speak(exercise["question"]);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F7FF),
      appBar: AppBar(
        title: const Text("تمرين"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              exercise["question"],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      option,
                      style: const TextStyle(fontSize: 22),
                    ),
                    onPressed: () {
                      final outcome = controller.processAnswer(
                        lessonId: exercise["lesson_id"],
                        studentAnswer: option,
                        correctAnswer: exercise["correct_answer"],
                        responseTime: 4,
                        totalLessonsCompleted: currentIndex + 1,
                      );

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(
                            outcome: outcome,
                            exercises: exercises,
                            currentIndex: currentIndex,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
