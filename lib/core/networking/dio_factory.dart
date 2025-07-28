import 'package:dio/dio.dart';

class DioFactory {
  final DioConfig _config;
  final List<Interceptor> _interceptors;

  DioFactory({
    required DioConfig config,
    required List<Interceptor> interceptors,
  }) : _config = config,
       _interceptors = interceptors;

  Dio create() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: _config.connectTimeout,
        receiveTimeout: _config.receiveTimeout,
        headers: _config.defaultHeaders,
      ),
    );

    // Add all interceptors
    for (final interceptor in _interceptors) {
      dio.interceptors.add(interceptor);
    }

    return dio;
  }
}

class DioConfig {
  static const Duration _defaultTimeout = Duration(seconds: 30);

  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Map<String, dynamic> defaultHeaders;

  const DioConfig({
    this.connectTimeout = _defaultTimeout,
    this.receiveTimeout = _defaultTimeout,
    this.defaultHeaders = const {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': 'en',
    },
  });
}
