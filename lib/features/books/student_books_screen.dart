import 'package:flutter/material.dart';
import '../../offline/models/book_model.dart';
import '../../offline/models/lesson_model.dart';
import '../school/student_lesson_screen.dart';
import '../../offline/book_storage_service.dart';

class StudentBooksScreen extends StatefulWidget {
  const StudentBooksScreen({super.key});

  @override
  _StudentBooksScreenState createState() => _StudentBooksScreenState();
}

class _StudentBooksScreenState extends State<StudentBooksScreen> {
  List<BookModel> _books = [];
  List<LessonModel> _lessons = [];

  @override
  void initState() {
    super.initState();
    _loadBooks();
  }

  void _loadBooks() async {
    final books = await BookStorageService.getAllBooks();
    setState(() {
      _books = books;
    });
  }

  void _loadLessons(String bookId) async {
    final lessons = await BookStorageService.getLessonsByBookId(bookId);
    setState(() {
      _lessons = lessons;
    });
  }

  void _openLesson(LessonModel lesson) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StudentLessonScreen(lesson: lesson),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الكتب الدراسية"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                final book = _books[index];
                return ListTile(
                  title: Text(book.title),
                  onTap: () => _loadLessons(book.id),
                );
              },
            ),
          ),
          if (_lessons.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: _lessons.length,
                itemBuilder: (context, index) {
                  final lesson = _lessons[index];
                  return ListTile(
                    title: Text(lesson.title),
                    onTap: () => _openLesson(lesson),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
