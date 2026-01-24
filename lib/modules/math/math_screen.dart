import 'package:flutter/material.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: Text('الرياضيات')),
      body: Center(
        child: Text(
          'درس الرياضيات الأول',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
