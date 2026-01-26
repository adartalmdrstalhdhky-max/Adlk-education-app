import 'package:flutter/material.dart';
import 'ui/screens/lesson_screen.dart';

void main() {
  runApp(const AdlkApp());
}

class AdlkApp extends StatelessWidget {
  const AdlkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adlk',
      home: LessonScreen(),
    );
  }
}
