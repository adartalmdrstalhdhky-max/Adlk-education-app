import 'package:flutter/material.dart';
import '../controllers/analytics_controller.dart';
import '../../domain/entities/student_stats.dart';

class AnalyticsDashboard extends StatelessWidget {
  final AnalyticsController controller;
  final List<String> lessonIds;

  const AnalyticsDashboard({
    super.key,
    required this.controller,
    required this.lessonIds,
  });

  @override
  Widget build(BuildContext context) {
    final StudentStats stats = controller.loadStats(lessonIds);

    return Scaffold(
      appBar: AppBar(title: const Text('تحليل التقدم')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: lessonIds.map((id) {
          return ListTile(
            title: Text('الدرس: $id'),
            subtitle: Text(
              'أخطاء: ${stats.mistakesPerLesson[id]} | زمن الاستجابة: ${stats.averageResponseTime[id]} ms',
            ),
          );
        }).toList(),
      ),
    );
  }
}
