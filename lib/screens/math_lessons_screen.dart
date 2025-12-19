// math_lessons_screen.dart
import 'package:flutter/material.dart';
class MathLessonsScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('دروس الرياضيات')),
body: ListView(children: [ListTile(title: Text('الدرس الاول'), onTap: () {})]),
);
}
}
