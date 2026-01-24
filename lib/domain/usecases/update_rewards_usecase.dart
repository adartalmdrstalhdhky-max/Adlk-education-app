import '../entities/badge.dart';

class UpdateRewardsUseCase {
  List<Badge> call(int correctAnswers) {
    final badges = <Badge>[];

    if (correctAnswers >= 5) {
      badges.add(
        Badge(
          id: 'starter',
          title: 'بداية قوية',
          description: 'أجبت 5 إجابات صحيحة',
        ),
      );
    }

    if (correctAnswers >= 10) {
      badges.add(
        Badge(
          id: 'champion',
          title: 'بطل التعلم',
          description: 'أجبت 10 إجابات صحيحة',
        ),
      );
    }

    return badges;
  }
}
