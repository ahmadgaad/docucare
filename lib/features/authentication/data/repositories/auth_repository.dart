import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/authentication/data/models/login_request_body.dart';
import 'package:docdoc/features/authentication/data/models/login_response.dart';
import 'package:docdoc/features/authentication/data/models/register_request_body.dart';
import 'package:docdoc/features/authentication/data/models/register_response.dart';

abstract class AuthRepository {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body);
  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody body);
}

class AuthRepositoryImpl implements AuthRepository {
  final ApiService _apiService;

  AuthRepositoryImpl(this._apiService);

  @override
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await _apiService.login(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody body) async {
    try {
      final response = await _apiService.register(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
