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
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  Future<bool?> setString({required String key, required String value}) async {
    return await _prefs?.setString(key, value);
  }

  Future<String?> getSecureString(String key) async {
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

    return await storage.read(key: key);
  }

  Future<void> setSecureString({
    required String key,
    required String value,
  }) async {
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    await storage.write(key: key, value: value);
  }
}
