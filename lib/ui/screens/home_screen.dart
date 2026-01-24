import 'package:flutter/material.dart';
import '../../core/app_router.dart';
import '../widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adlk')),
      body: Center(
        child: PrimaryButton(
          text: 'ابدأ التعلم',
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.materials);
          },
        ),
      ),
    );
  }
}
