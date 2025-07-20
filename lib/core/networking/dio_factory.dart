import 'package:dio/dio.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      _addDioHeaders();
      _addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void _addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void _addDioHeaders() {
    final prefs = SharedPrefService();
    String token = prefs.getString('token') ?? '';
    dio?.options.headers.addAll({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': 'en',
      if (token.isNotEmpty) 'Authorization': 'Bearer $token',
    });
  }
}
