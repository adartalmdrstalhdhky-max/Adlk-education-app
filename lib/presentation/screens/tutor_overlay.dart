import 'package:flutter/material.dart';
import '../../ai/tutor/ai_tutor_controller.dart';
import '../widgets/ai_tutor_avatar.dart';

class TutorOverlay extends StatelessWidget {
  final bool isCorrect;
  final AITutorController controller;

  const TutorOverlay({
    super.key,
    required this.isCorrect,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final mood = controller.decideMood(isCorrect: isCorrect);
    final message = controller.message(mood);

    return Center(
      child: AITutorAvatar(
        mood: mood,
        message: message,
      ),
    );
  }
}
