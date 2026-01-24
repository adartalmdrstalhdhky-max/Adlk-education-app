import 'package:flutter/material.dart';
import '../../core/app_router.dart';
import '../widgets/primary_button.dart';

class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('المواد')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            PrimaryButton(
              text: '📘 القراءة',
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.reading);
              },
            ),
            const SizedBox(height: 16),
            PrimaryButton(
              text: '➕ الرياضيات',
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.math);
              },
            ),
          ],
        ),
      ),
    );
  }
}
