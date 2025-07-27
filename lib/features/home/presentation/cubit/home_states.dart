import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.specializationLoading() = SpecializationLoading;
  const factory HomeStates.specializationSuccess(
    SpecializationsResponseModel data,
  ) = SpecializationSuccess;
  const factory HomeStates.specializationError({required String error}) =
      SpecializationError;
  const factory HomeStates.specializationSelected(int index) =
      SpecializationSelected;
}
