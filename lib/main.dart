import 'package:flutter/material.dart';

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
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: const Color(0xFF1E88E5),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.school,
                size: 96,
                color: Color(0xFF1E88E5),
              ),
              const SizedBox(height: 24),
              const Text(
                'أدلك',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'منصة تعليمية لبناء الأساس\nوتقوية القراءة والحساب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E88E5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  'ابدأ التعلم',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المواد'),
        backgroundColor: const Color(0xFF1E88E5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              color: const Color(0xFFE3F2FD),
              onPressed: () {},
              child: const Text(
                '📘 القراءة',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 16),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              color: const Color(0xFFE8F5E9),
              onPressed: () {},
              child: const Text(
                '➕ الرياضيات',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
