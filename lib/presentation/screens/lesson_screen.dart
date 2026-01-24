import 'package:flutter/material.dart';
import '../controllers/lesson_controller.dart';
import '../../domain/entities/lesson.dart';

class LessonScreen extends StatefulWidget {
  final String materialKey;
  final LessonController controller;

  const LessonScreen({
    super.key,
    required this.materialKey,
    required this.controller,
  });

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  late Future<List<Lesson>> lessonsFuture;
  int index = 0;
  int? selected;

  @override
  void initState() {
    super.initState();
    index = widget.controller.getProgress(widget.materialKey);
    lessonsFuture = widget.controller.load(widget.materialKey);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Lesson>>(
      future: lessonsFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }

        final lesson = snapshot.data![index];

        return Scaffold(
          appBar: AppBar(title: Text(lesson.title)),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(lesson.content),
                ...List.generate(lesson.options.length, (i) {
                  return RadioListTile(
                    title: Text(lesson.options[i]),
                    value: i,
                    groupValue: selected,
                    onChanged: (v) => setState(() => selected = v),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    if (selected == lesson.correctIndex) {
                      widget.controller.saveProgress(
                        widget.materialKey,
                        index + 1,
                      );
                      setState(() {
                        index++;
                        selected = null;
                      });
                    }
                  },
                  child: const Text('تحقق'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
