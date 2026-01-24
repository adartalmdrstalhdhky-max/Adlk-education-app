import 'package:flutter/material.dart';
import '../../ai/tutor/tutor_state.dart';

class AITutorAvatar extends StatelessWidget {
  final TutorMood mood;
  final String message;

  const AITutorAvatar({
    super.key,
    required this.mood,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon;

    switch (mood) {
      case TutorMood.happy:
        icon = Icons.sentiment_very_satisfied;
        break;
      case TutorMood.encouraging:
        icon = Icons.sentiment_satisfied;
        break;
      default:
        icon = Icons.sentiment_neutral;
    }

    return Column(
      children: [
        Icon(icon, size: 64),
        const SizedBox(height: 8),
        Text(message),
      ],
    );
  }
}
