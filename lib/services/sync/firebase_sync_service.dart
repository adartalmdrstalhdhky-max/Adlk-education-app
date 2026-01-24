import 'sync_engine.dart';

class FirebaseSyncService implements SyncEngine {
  @override
  Future<void> push() async {
    // رفع بيانات Hive المشفرة إلى Firebase
    // يعمل عند توفر الاتصال فقط
  }

  @override
  Future<void> pull() async {
    // تنزيل البيانات ودمجها محلياً (Merge Strategy)
  }
}
