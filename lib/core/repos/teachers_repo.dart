class Teacher {
  String teacherId, name, username, subject, permissions;
  String? passwordHash;
  bool active;
  Teacher({
    required this.teacherId,
    required this.name,
    required this.username,
    required this.subject,
    required this.permissions,
    this.passwordHash,
    this.active = true,
  });
}

abstract class TeachersRepo {
  Future<List<Teacher>> all();
  Future<void> importCsv(String assetPath);
  Future<void> add(Teacher t);
  Future<void> update(Teacher t);
  Future<void> remove(String teacherId);
}
