import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/home/data/models/specializations_response.dart';

abstract class HomeRepository {
  Future<ApiResult<SpecializationsResponseModel>> fetchDoctorsWithSpeciality();
}

class HomeRepositoryImpl implements HomeRepository {
  final ApiService _apiService;

  HomeRepositoryImpl(this._apiService);

  @override
  Future<ApiResult<SpecializationsResponseModel>>
  fetchDoctorsWithSpeciality() async {
    try {
      final response = await _apiService.getDoctorsSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
