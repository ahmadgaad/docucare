import 'package:dio/dio.dart';
import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/extensions/string.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/shared/utils/constants.dart';

class AuthorizationInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await sl<SharedPrefService>().getSecuredString(
      SharedPrefKeys.userToken,
    );

    if (!token.isNullOrEmpty()) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
