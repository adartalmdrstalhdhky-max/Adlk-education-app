import 'package:flutter/material.dart';
import 'reading_content.dart';
import '../../services/local_db/progress_repository.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({super.key});

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  int currentIndex = 0;
  int? selectedOption;

  final progressRepo = ProgressRepository();

  @override
  void initState() {
    super.initState();
    currentIndex = progressRepo.getReadingProgress();
  }

  void submitAnswer() {
    final lesson = readingLessons[currentIndex];
    if (selectedOption == lesson.correctIndex) {
      progressRepo.saveReadingProgress(currentIndex + 1);
      setState(() {
        currentIndex =
            (currentIndex + 1) % readingLessons.length;
        selectedOption = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lesson = readingLessons[currentIndex];

    return Scaffold(
      appBar: AppBar(title: Text(lesson.title)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lesson.content, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            ...List.generate(lesson.options.length, (index) {
              return RadioListTile<int>(
                title: Text(lesson.options[index]),
                value: index,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() => selectedOption = value);
                },
              );
            }),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: submitAnswer,
              child: const Text('تحقق'),
            )
          ],
        ),
      ),
    );
  }
}
