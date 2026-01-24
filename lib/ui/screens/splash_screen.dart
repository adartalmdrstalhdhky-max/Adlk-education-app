import 'package:flutter/material.dart';
import '../../core/app_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRouter.home);
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'أدلك',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
