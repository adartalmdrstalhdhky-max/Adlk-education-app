import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/student_model.dart';
import 'models/teacher_model.dart';
import 'models/book_model.dart';
import 'models/lesson_model.dart';
import 'models/question_model.dart';
import 'models/answer_model.dart';

class HiveService {
  static Future<void> initHive() async {
    await Hive.initFlutter();

    // تسجيل جميع أنواع النماذج
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(StudentModelAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(TeacherModelAdapter());
    }
    if (!Hive.isAdapterRegistered(6)) {
      Hive.registerAdapter(BookModelAdapter());
    }
    if (!Hive.isAdapterRegistered(7)) {
      Hive.registerAdapter(LessonModelAdapter());
    }
    if (!Hive.isAdapterRegistered(8)) {
      Hive.registerAdapter(QuestionModelAdapter());
    }
    if (!Hive.isAdapterRegistered(9)) {
      Hive.registerAdapter(AnswerModelAdapter());
    }

    // فتح الصناديق (Boxes) الأساسية
    await Hive.openBox('students');
    await Hive.openBox('teachers');
    await Hive.openBox('books');
    await Hive.openBox('lessons');
    await Hive.openBox('questions');
    await Hive.openBox('answers');
  }
}
