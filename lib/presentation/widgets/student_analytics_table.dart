import 'package:flutter/material.dart';

class StudentAnalyticsTable extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const StudentAnalyticsTable({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('الطالب')),
        DataColumn(label: Text('أخطاء')),
        DataColumn(label: Text('متوسط الزمن')),
      ],
      rows: data.map((e) {
        return DataRow(cells: [
          DataCell(Text(e['name'])),
          DataCell(Text('${e['mistakes']}')),
          DataCell(Text('${e['avgTime']} ms')),
        ]);
      }).toList(),
    );
  }
}
