import 'package:hive/hive.dart';

part 'teacher_model.g.dart';

@HiveType(typeId: 1)
class TeacherModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String subject;

  TeacherModel({
    required this.id,
    required this.name,
    required this.subject,
  });
}
