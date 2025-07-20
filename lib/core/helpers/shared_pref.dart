import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  // Private constructor
  SharedPrefService._internal();

  // Single instance
  static final SharedPrefService _instance = SharedPrefService._internal();

  // Factory constructor to return the same instance
  // This allows you to use SharedPrefService() to get the instance
  factory SharedPrefService() {
    return _instance;
  }

  // SharedPreferences instance
  static SharedPreferences? _prefs;

  AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  // Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Getters for different data types
  String getString(String key, {String defaultValue = ''}) {
    return _prefs?.getString(key) ?? defaultValue;
  }

  Future<String> getSecureString(String key, {String defaultValue = ''}) async {
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

    return await storage.read(key: key) ?? '';
  }
}
