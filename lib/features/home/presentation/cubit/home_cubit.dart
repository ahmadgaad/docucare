import 'package:docdoc/core/extensions/string.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/data/repositories/home_repository.dart';
import 'package:docdoc/features/home/presentation/cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeRepository _homeRepository;
  HomeCubit(this._homeRepository) : super(HomeStates.specializationLoading()) {
    loadSpecializations();
  }

  List<SpecializationsData> allSpecializations = [];

  Future<void> loadSpecializations() async {
    emit(HomeStates.specializationLoading());
    final response = await _homeRepository.fetchDoctorsWithSpeciality();

    response.when(
      success: (specializations) {
        allSpecializations = specializations.specializationsDataList;
        getDoctorsList(specializationId: allSpecializations.first.id);
        emit(HomeStates.specializationSuccess(specializations));
      },
      failure: (error) => emit(
        HomeStates.specializationError(
          error: error.apiErrorModel.message ?? '',
        ),
      ),
    );
  }

  void getDoctorsList({required int specializationId}) {
    List<DoctorModel> doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (doctorsList.isNotNullOrEmpty()) {
      emit(HomeStates.doctorsSuccess(doctorsList));
    } else {
      emit(
        HomeStates.doctorsError(
          error: 'No doctors found for this specialization.',
        ),
      );
    }
  }

  List<DoctorModel> getDoctorsListBySpecializationId(int specializationId) {
    return allSpecializations
        .firstWhere((specialization) => specialization.id == specializationId)
        .doctors;
  }
}
