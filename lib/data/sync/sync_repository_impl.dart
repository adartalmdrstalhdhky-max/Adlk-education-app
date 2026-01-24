import '../../services/sync/sync_engine.dart';

class SyncRepository {
  final SyncEngine engine;

  SyncRepository(this.engine);

  Future<void> syncNow() async {
    await engine.push();
    await engine.pull();
  }
}
