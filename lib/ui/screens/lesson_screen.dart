import 'package:flutter/material.dart';
import '../../services/content/content_loader.dart';
import 'exercise_screen.dart';

class LessonScreen extends StatelessWidget {
  LessonScreen({super.key});

  final ContentLoader loader = ContentLoader();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("درس القراءة")),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: loader.loadExercises(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final exercises = snapshot.data!;

          return ListView.builder(
            itemCount: exercises.length,
            itemBuilder: (context, index) {
              final exercise = exercises[index];

              return ListTile(
                title: Text(exercise["question"]),
                trailing: const Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ExerciseScreen(exercise: exercise),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
