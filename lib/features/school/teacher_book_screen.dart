import 'package:flutter/material.dart';
import '../../offline/models/book_model.dart';
import '../../offline/book_storage_service.dart';

class TeacherBookScreen extends StatefulWidget {
  const TeacherBookScreen({super.key});

  @override
  _TeacherBookScreenState createState() => _TeacherBookScreenState();
}

class _TeacherBookScreenState extends State<TeacherBookScreen> {
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _gradeController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<BookModel> _books = [];

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

  void _addBook() async {
    final book = BookModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: _titleController.text,
      author: _authorController.text,
      grade: int.tryParse(_gradeController.text) ?? 1,
      description: _descriptionController.text,
    );

    await BookStorageService.addBook(book);
    _titleController.clear();
    _authorController.clear();
    _gradeController.clear();
    _descriptionController.clear();
    _loadBooks();
  }

  void _deleteBook(String bookId) async {
    final box = await Hive.openBox<BookModel>('books');
    await box.delete(bookId);
    _loadBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إدارة الكتب"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: "عنوان الكتاب"),
            ),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(labelText: "المؤلف"),
            ),
            TextField(
              controller: _gradeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "الصف الدراسي"),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: "وصف الكتاب"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addBook,
              child: const Text("إضافة كتاب"),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: _books.length,
                itemBuilder: (context, index) {
                  final book = _books[index];
                  return ListTile(
                    title: Text(book.title),
                    subtitle: Text("الصف: ${book.grade} - المؤلف: ${book.author}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteBook(book.id),
                    ),
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
