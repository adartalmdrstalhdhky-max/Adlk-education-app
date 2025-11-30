// app/lib/core/app_config.dart
import 'package:flutter/foundation.dart';

// Provides global configuration and constants for the application.
class AppConfig {
  AppConfig._(); // Private constructor to prevent instantiation

  // --- General App Configuration ---
  static const String appName = 'ADLUKK Education';
  
  // --- Sync Service Configuration ---
  
  /// The collection name in Isar database used for storing all pending operations.
  /// This must match the name used in the SyncOperation Isar schema.
  static const String syncOperationCollection = 'SyncOperation';

  /// A simulated network latency for testing the sync service UI.
  static const Duration simulatedNetworkDelay = Duration(milliseconds: 500);

  /// The interval at which the background sync worker should attempt to run (e.g., every 60 seconds).
  static const Duration syncInterval = Duration(minutes: 1);

  // --- Content & Paths Configuration ---
  
  /// The local folder where downloaded content (books, videos) will be stored.
  /// Note: This is a logical name, actual file system path depends on platform.
  static const String contentRootFolder = 'adlukk_content';
  
  // --- Debugging and Environment ---
  
  /// Returns true if the application is running in a debug or profile environment.
  static bool get isDebugMode => kDebugMode;
  
  // --- Database Configuration (Isar) ---
  
  /// The Isar database name (for multi-database setup, if needed).
  static const String databaseName = 'adlukk_db';
}
