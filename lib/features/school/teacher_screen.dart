import 'package:flutter/material.dart';
import '../../services/db_service.dart';

class StudentScreen extends StatelessWidget {
  final DBService dbService = DBService();

  StudentScreen() {
    dbService.init();
    // Example: Add sample students
    dbService.addStudent({'id': '1', 'name': 'Ali', 'classId': 'A1', 'age': 10});
    dbService.addStudent({'id': '2', 'name': 'Sara', 'classId': 'A2', 'age': 11});
  }

  @override
  Widget build(BuildContext context) {
    final students = dbService.getAllStudents();

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Dashboard'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student['name']),
            subtitle: Text('Class: ${student['classId']} - Age: ${student['age']}'),
          );
        },
      ),
    );
  }
}
