import 'package:flutter/material.dart';
import '../../core/analytics/analytics_engine.dart';
import '../../services/storage/progress_storage.dart';

class TeacherDashboardScreen extends StatelessWidget {
  TeacherDashboardScreen({super.key});

  final ProgressStorage storage = ProgressStorage();
  final AnalyticsEngine analyticsEngine = AnalyticsEngine();

  @override
  Widget build(BuildContext context) {
    final progressList = storage.getAllProgress();
    final analytics = analyticsEngine.analyze(progressList);

    return Scaffold(
      appBar: AppBar(
        title: const Text("لوحة المعلّم"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: analytics.isEmpty
            ? const Center(
                child: Text(
                  "لا توجد بيانات طلاب بعد",
                  style: TextStyle(fontSize: 18),
                ),
              )
            : ListView.builder(
                itemCount: analytics.length,
                itemBuilder: (context, index) {
                  final item = analytics[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: ListTile(
                      leading: Icon(
                        item.needsIntervention
                            ? Icons.report_problem
                            : Icons.school,
                        color: item.needsIntervention
                            ? Colors.red
                            : Colors.blue,
                      ),
                      title: Text("الدرس: ${item.lessonId}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "إتقان الطالب: ${item.accuracy.toStringAsFixed(1)}%",
                          ),
                          Text(
                            "سرعة الاستجابة: ${item.averageResponseTime.toStringAsFixed(1)} ث",
                          ),
                          Text(
                            item.needsIntervention
                                ? "⚠️ يحتاج إعادة شرح"
                                : "✅ أداء جيد",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
