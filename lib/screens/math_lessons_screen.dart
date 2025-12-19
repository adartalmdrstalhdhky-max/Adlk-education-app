import 'package:flutter/material.dart';

class MathLessonScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('عرض الدرس')),
body: Padding(
padding: EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('عنوان الدرس الرياضيات الرقمية', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
SizedBox(height: 20),
Container(
height: 200,
width: double.infinity,
color: Colors.grey[300],
child: Center(child: Text('منطقة عرض الفيديو او المحتوى')),
),
SizedBox(height: 20),
Text('شرح الدرس لطلاب منارة الاجيال'),
],
),
),
);
}
}

