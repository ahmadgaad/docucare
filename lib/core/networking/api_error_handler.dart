// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  ApiErrorHandler._();
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout occurred");
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout occurred. Please try again later.",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout occurred. Please try again later.",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message: "An unknown error occurred. Please try again later.",
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: "Request was cancelled. Please try again.",
          );
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            message: "Request was cancelled. Please try again.",
          );
        case DioExceptionType.badCertificate:
          return ApiErrorModel(
            message: "Request was cancelled. Please try again.",
          );
      }
    } else {
      return ApiErrorModel(message: "Unknown error occurred");
    }
  }

  static ApiErrorModel _handleError(dynamic error) {
    return ApiErrorModel(
      message: error['message'],
      code: error['code'],
      errors: error['data'],
    );
  }
}
