import 'package:flutter/material.dart';
import '../../core/analytics/analytics_engine.dart';
import '../../services/storage/progress_storage.dart';

class ParentDashboardScreen extends StatelessWidget {
  ParentDashboardScreen({super.key});

  final ProgressStorage storage = ProgressStorage();
  final AnalyticsEngine analyticsEngine = AnalyticsEngine();

  @override
  Widget build(BuildContext context) {
    final progressList = storage.getAllProgress();
    final analytics = analyticsEngine.analyze(progressList);

    return Scaffold(
      appBar: AppBar(
        title: const Text("لوحة ولي الأمر"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: analytics.isEmpty
            ? const Center(
                child: Text(
                  "لا يوجد تقدم مسجل بعد",
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
                            ? Icons.warning
                            : Icons.check_circle,
                        color: item.needsIntervention
                            ? Colors.orange
                            : Colors.green,
                      ),
                      title: Text("الدرس: ${item.lessonId}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "نسبة الإتقان: ${item.accuracy.toStringAsFixed(1)}%",
                          ),
                          Text(
                            "متوسط السرعة: ${item.averageResponseTime.toStringAsFixed(1)} ث",
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
