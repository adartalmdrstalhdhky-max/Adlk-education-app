import '../repositories/school_repository.dart';

class AssignStudentUseCase {
  final SchoolRepository repo;
  AssignStudentUseCase(this.repo);

  void call(String studentId, String classroomId) {
    repo.assignStudent(studentId, classroomId);
  }
}
