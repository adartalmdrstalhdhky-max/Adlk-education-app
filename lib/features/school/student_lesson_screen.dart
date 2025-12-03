import 'package:flutter/material.dart';
import '../../offline/models/lesson_model.dart';
import '../../features/ai/lesson_explainer.dart';

class StudentLessonScreen extends StatefulWidget {
  final LessonModel lesson;

  const StudentLessonScreen({super.key, required this.lesson});

  @override
  _StudentLessonScreenState createState() => _StudentLessonScreenState();
}

class _StudentLessonScreenState extends State<StudentLessonScreen> {
  final LessonExplainer _explainer = LessonExplainer();
  String _lessonText = "";
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loadLesson();
  }

  Future<void> _loadLesson() async {
    setState(() {
      _loading = true;
    });
    final text = await _explainer.explainLesson(widget.lesson);
    setState(() {
      _lessonText = text;
      _loading = false;
    });
  }

  void _showSummary() async {
    setState(() {
      _loading = true;
    });
    final summary = await _explainer.summarizeLesson(widget.lesson);
    setState(() {
      _lessonText = summary;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.summarize),
            onPressed: _showSummary,
            tooltip: "عرض ملخص الدرس",
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  _lessonText,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
    );
  }
}
