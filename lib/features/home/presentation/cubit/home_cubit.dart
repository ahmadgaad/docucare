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

  int? selectedSpecializationIndex;
  List<SpecializationsData> allSpecializations = [];

  void selectSpecialization(int index) {
    selectedSpecializationIndex = index;
    emit(HomeStates.specializationSelected(index));
  }

  Future<void> loadSpecializations() async {
    emit(HomeStates.specializationLoading());
    final response = await _homeRepository.fetchDoctorsWithSpeciality();

    response.when(
      success: (specializations) {
        allSpecializations = specializations.specializationsDataList;
        selectedSpecializationIndex = 0; // Default to first specialization
        emit(HomeStates.specializationSuccess(specializations));
      },
      failure: (error) => emit(
        HomeStates.specializationError(
          error: error.apiErrorModel.message ?? '',
        ),
      ),
    );
  }
}
