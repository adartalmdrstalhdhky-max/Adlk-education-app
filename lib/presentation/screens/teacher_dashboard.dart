import 'package:flutter/material.dart';
import '../widgets/student_analytics_table.dart';

class TeacherDashboard extends StatelessWidget {
  final List<Map<String, dynamic>> analytics;

  const TeacherDashboard({super.key, required this.analytics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة المعلم')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: StudentAnalyticsTable(data: analytics),
      ),
    );
  }
}
