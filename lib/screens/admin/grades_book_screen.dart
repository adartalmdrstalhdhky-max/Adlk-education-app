import 'package:flutter/material.dart';

class GradesBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('سجل الدرجات الرقمي'), backgroundColor: Colors.teal),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('اسم الطالب')),
            DataColumn(label: Text('المادة')),
            DataColumn(label: Text('الدرجة')),
            DataColumn(label: Text('التقدير')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('احمد ناصر')),
              DataCell(Text('الرياضيات')),
              DataCell(Text('95')),
              DataCell(Text('ممتاز', style: TextStyle(color: Colors.green))),
            ]),
          ],
        ),
      ),
    );
  }
}
