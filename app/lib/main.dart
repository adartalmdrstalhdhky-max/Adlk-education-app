import 'package:flutter/material.dart';

void main() => runApp(const AdlukkApp());

class AdlukkApp extends StatelessWidget {
  const AdlukkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ADLUKK Education",
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome to ADLUKK",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
