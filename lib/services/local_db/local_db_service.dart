class LocalDbService {
  static final LocalDbService _instance = LocalDbService._internal();
  factory LocalDbService() => _instance;

  LocalDbService._internal();

  final Map<String, dynamic> _storage = {};

  void save(String key, dynamic value) {
    _storage[key] = value;
  }

  dynamic read(String key) {
    return _storage[key];
  }
}
