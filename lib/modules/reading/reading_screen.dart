import 'package:flutter/material.dart';

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('القراءة')),
      body: Center(
        child: Text(
          'درس القراءة الأول',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
