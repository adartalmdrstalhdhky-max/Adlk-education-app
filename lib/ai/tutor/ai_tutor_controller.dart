import 'tutor_state.dart';

class AITutorController {
  TutorMood decideMood({
    required bool isCorrect,
  }) {
    if (isCorrect) return TutorMood.happy;
    return TutorMood.encouraging;
  }

  String message(TutorMood mood) {
    switch (mood) {
      case TutorMood.happy:
        return 'رائع! أحسنت 👏';
      case TutorMood.encouraging:
        return 'لا بأس، حاول مرة أخرى 💪';
      default:
        return 'هيا نكمل!';
    }
  }
}
