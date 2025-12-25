class ContentItem {
  String subject; int unitNumber, lessonNumber;
  String lessonId, lessonTitle;
  String? pageNumber, activityType, description, resourceLink;
  ContentItem({
    required this.subject,
    required this.unitNumber,
    required this.lessonNumber,
    required this.lessonId,
    required this.lessonTitle,
    this.pageNumber,
    this.activityType,
    this.description,
    this.resourceLink,
  });
}

abstract class ContentRepo {
  Future<List<ContentItem>> all();
  Future<void> importCsv(String assetPath);
}
