import 'package:flutter/material.dart';
import '../../offline/models/lesson_model.dart';
import '../../offline/models/question_model.dart';
import '../../offline/book_storage_service.dart';

class LessonExplainer {
  /// يشرح الدرس نصيًا خطوة بخطوة
  Future<String> explainLesson(LessonModel lesson) async {
    // هنا يمكن إضافة معالجة نصية للدرس أو استخدام LLM محلي
    return "شرح الدرس: ${lesson.title}\n\n${lesson.content}";
  }

  /// يحصل على الأسئلة المرتبطة بالدرس
  Future<List<QuestionModel>> getLessonQuestions(String lessonId) async {
    // هنا يتم جلب الأسئلة من قاعدة البيانات
    final allBooks = await BookStorageService.getAllBooks();
    // مؤقت: سنرجع قائمة فارغة حتى نربطها بالأسئلة لاحقًا
    return [];
  }

  /// يقيم إجابة الطالب ويعطي شرح
  Future<String> evaluateAnswer(QuestionModel question, String studentAnswer) async {
    if (question.type == "mcq" && question.options.isNotEmpty) {
      final correctAnswer = question.options[question.correctIndex];
      if (studentAnswer.trim().toLowerCase() == correctAnswer.trim().toLowerCase()) {
        return "إجابتك صحيحة! 👍\n${question.explanation}";
      } else {
        return "إجابتك غير صحيحة.\nالإجابة الصحيحة: $correctAnswer\n${question.explanation}";
      }
    }
    // أسئلة صح/خطأ أو مكتوبة يمكن معالجتها لاحقًا
    return question.explanation;
  }

  /// توليد ملخص للدرس
  Future<String> summarizeLesson(LessonModel lesson) async {
    // مؤقت: ملخص بسيط
    return "ملخص الدرس: ${lesson.title}\n" +
        lesson.content.substring(0, lesson.content.length > 100 ? 100 : lesson.content.length) +
        "...";
  }
}
