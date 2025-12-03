import 'smart_engine.dart';

class AIStudentAssistant {
  final SmartEngine _engine = SmartEngine();

  AIStudentAssistant() {
    _engine.init(onlineMode: false); // افتراضي للعمل بدون إنترنت
  }

  /// Ask a question and get AI response
  String askQuestion(String question) {
    return _engine.getResponse(question);
  }

  /// Sync with server when online
  void syncOnline() {
    _engine.syncOnlineData();
  }

  /// Process offline query
  void offlineQuery(String query) {
    _engine.processOfflineQuery(query);
  }
}
