import 'teachers_repo.dart';
import '../repos/csv_utils.dart';

class TeachersRepoLocal implements TeachersRepo {
  final List<Teacher> _data = [];

  @override
  Future<List<Teacher>> all() async => List.unmodifiable(_data);

  @override
  Future<void> add(Teacher t) async {
    final i = _data.indexWhere((e) => e.teacherId == t.teacherId);
    if (i >= 0) { _data[i] = t; } else { _data.add(t); }
  }

  @override
  Future<void> update(Teacher t) => add(t);

  @override
  Future<void> remove(String teacherId) async {
    _data.removeWhere((e) => e.teacherId == teacherId);
  }

  @override
  Future<void> importCsv(String assetPath) async {
    final rows = await CsvUtils.loadAsMaps(assetPath);
    _data
      ..clear()
      ..addAll(rows.map((m) => Teacher(
            teacherId: m['TeacherID'] ?? '',
            name: m['TeacherName'] ?? '',
            username: m['Username'] ?? '',
            subject: m['Subject'] ?? '',
            permissions: m['Permissions'] ?? '',
            passwordHash: m['Password_Hash'],
          )));
  }
}
