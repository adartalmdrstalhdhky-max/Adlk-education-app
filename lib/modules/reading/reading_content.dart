import 'reading_model.dart';

final List<ReadingLesson> readingLessons = [
  ReadingLesson(
    id: 'a1',
    title: 'حرف الألف',
    content: 'الألف هو أول الحروف العربية.\nمثال: أَسَد',
    options: ['أَسَد', 'بَاب', 'تُوت'],
    correctIndex: 0,
  ),
  ReadingLesson(
    id: 'b1',
    title: 'حرف الباء',
    content: 'الباء حرف مهم في بداية الكلمات.\nمثال: بَاب',
    options: ['أُم', 'بَاب', 'أَسَد'],
    correctIndex: 1,
  ),
];
