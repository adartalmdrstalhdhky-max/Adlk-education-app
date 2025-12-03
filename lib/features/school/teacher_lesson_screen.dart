import 'package:flutter/material.dart';
import '../../offline/models/lesson_model.dart';
import '../../offline/models/question_model.dart';
import '../../offline/book_storage_service.dart';

class TeacherLessonScreen extends StatefulWidget {
  const TeacherLessonScreen({super.key});

  @override
  _TeacherLessonScreenState createState() => _TeacherLessonScreenState();
}

class _TeacherLessonScreenState extends State<TeacherLessonScreen> {
  final _lessonTitleController = TextEditingController();
  final _lessonContentController = TextEditingController();
  List<QuestionModel> _questions = [];

  void _addLesson() async {
    final lesson = LessonModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: _lessonTitleController.text,
      content: _lessonContentController.text,
      bookId: "book1", // مؤقت: يمكن اختيار الكتاب
      unit: "Unit 1",
      order: 1,
    );

    await BookStorageService.addLesson(lesson);
    _lessonTitleController.clear();
    _lessonContentController.clear();
    setState(() {});
  }

  void _addQuestion() {
    final question = QuestionModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      lessonId: "lesson1", // مؤقت: يجب اختيار الدرس المناسب
      questionText: "نص السؤال",
      options: ["أ", "ب", "ج", "د"],
      correctIndex: 0,
      explanation: "شرح الإجابة هنا",
    );
    setState(() {
      _questions.add(question);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إدارة الدروس"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _lessonTitleController,
              decoration: const InputDecoration(labelText: "عنوان الدرس"),
            ),
            TextField(
              controller: _lessonContentController,
              decoration: const InputDecoration(labelText: "محتوى الدرس"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addLesson,
              child: const Text("إضافة الدرس"),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _addQuestion,
              child: const Text("إضافة سؤال للدرس"),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  final q = _questions[index];
                  return ListTile(
                    title: Text(q.questionText),
                    subtitle: Text("إجابة صحيحة: ${q.options[q.correctIndex]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
