import 'package:hive/hive.dart';

part 'book_model.g.dart';

@HiveType(typeId: 3)
class BookModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String grade; // الصف الدراسي

  @HiveField(3)
  final String subject; // اسم المادة

  @HiveField(4)
  final String filePath; // مسار ملف الكتاب (PDF)

  @HiveField(5)
  final bool isDownloaded; // هل تم تنزيل الكتاب للعمل بدون إنترنت؟

  BookModel({
    required this.id,
    required this.title,
    required this.grade,
    required this.subject,
    required this.filePath,
    required this.isDownloaded,
  });
}
