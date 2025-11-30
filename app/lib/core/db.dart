// app/lib/core/db.dart
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:adlukk_app/core/app_config.dart';
import 'package:adlukk_app/core/schemas/book.dart';
// NOTE: SyncOperation is needed here, but its schema is not created yet.
// For now, we only include the schemas we have:
// import 'package:adlukk_app/core/schemas/sync_operation.dart'; 

/// Manages the Isar database instance for the entire application.
class DatabaseManager {
  DatabaseManager._(); // Private constructor

  /// The singleton instance of the Isar database.
  static Isar? _isar;

  /// Returns the initialized Isar instance.
  /// Throws an exception if the database has not been initialized.
  static Isar get instance {
    if (_isar == null) {
      // In a real application, proper error handling or initialization check is crucial
      throw Exception('DatabaseManager must be initialized before access.');
    }
    return _isar!;
  }

  /// Initializes the Isar database asynchronously.
  /// This must be called once at the start of the application.
  static Future<void> initialize() async {
    if (_isar != null) return; // Already initialized

    try {
      // 1. Get the application's documents directory for persistent storage
      final dir = await getApplicationDocumentsDirectory();
      final dbPath = dir.path;
      
      // 2. Open the Isar database with the defined schemas
      _isar = await Isar.open(
        // Include all database schemas here:
        [BookSchema], 
        
        directory: dbPath,
        name: AppConfig.databaseName,
        // Ensure data is synchronized across isolates (important for Flutter)
        relaxedDurability: true, 
      );
      
      print('DatabaseManager: Isar database initialized successfully at $dbPath');
      
    } catch (e) {
      print('DatabaseManager Error: Failed to initialize Isar database: $e');
      // Re-throw the error to ensure the application startup fails if DB initialization fails
      rethrow; 
    }
  }

  /// Closes the Isar database instance.
  static Future<void> close() async {
    await _isar?.close();
    _isar = null;
    print('DatabaseManager: Isar database closed.');
  }
}
