import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HiveService {
  static const _secureKey = 'hive_encryption_key';

  Future<void> init() async {
    await Hive.initFlutter();
    final secureStorage = const FlutterSecureStorage();
    var key = await secureStorage.read(key: _secureKey);

    if (key == null) {
      final generatedKey = Hive.generateSecureKey();
      await secureStorage.write(
        key: _secureKey,
        value: generatedKey.join(','),
      );
      key = generatedKey.join(',');
    }

    final encryptionKey =
        key.split(',').map((e) => int.parse(e)).toList();

    await Hive.openBox(
      'progressBox',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }
}
