class Reward {
  final String type; // point / badge
  final String value;
  final String description;

  Reward({
    required this.type,
    required this.value,
    required this.description,
  });
}

class GamificationEngine {
  int calculatePoints({
    required bool isCorrect,
    required int responseTime,
  }) {
    int points = 0;

    if (isCorrect) {
      points += 10;
    }

    if (responseTime <= 5) {
      points += 5;
    }

    return points;
  }

  Reward? assignBadge({
    required double accuracy,
    required int totalLessonsCompleted,
  }) {
    if (accuracy >= 90 && totalLessonsCompleted >= 3) {
      return Reward(
        type: "badge",
        value: "gold_reader",
        description: "قارئ ذهبي ممتاز",
      );
    }

    if (accuracy >= 75) {
      return Reward(
        type: "badge",
        value: "silver_reader",
        description: "قارئ مجتهد",
      );
    }

    return null;
  }
}
