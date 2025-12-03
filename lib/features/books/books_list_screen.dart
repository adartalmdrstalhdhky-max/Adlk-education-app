import 'package:flutter/material.dart';
import '../../services/db_service.dart';

class BooksListScreen extends StatelessWidget {
  final DBService dbService = DBService();

  BooksListScreen() {
    dbService.init();
    // Sample books
    dbService.addBook({'id': '1', 'title': 'Math Grade 1', 'grade': '1', 'author': 'Author A'});
    dbService.addBook({'id': '2', 'title': 'Science Grade 2', 'grade': '2', 'author': 'Author B'});
  }

  @override
  Widget build(BuildContext context) {
    final books = dbService.getAllBooks();

    return Scaffold(
      appBar: AppBar(
        title: Text('Books & Curriculum'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book['title']),
            subtitle: Text('Grade: ${book['grade']} - Author: ${book['author']}'),
          );
        },
      ),
    );
  }
}
