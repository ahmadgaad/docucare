import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_horizontal_list_view.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_horizontal_list_view_shimmer.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_see_all_button.dart';
import 'package:docdoc/features/home/presentation/components/doctors_vertical_list_view.dart';
import 'package:docdoc/features/home/presentation/components/doctors_vertical_list_view_shimmer.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:docdoc/features/home/presentation/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationError ||
          current is SpecializationSuccess ||
          current is SpecializationSelected,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => SetupLoading(),
          specializationSuccess: (specializationsResponseModel) {
            var specializationList = specializationsResponseModel.specializationsDataList;
            var homeCubit = context.read<HomeCubit>();
            return SetupSuccess(
              specializationList: specializationList,
              selectedIndex: homeCubit.selectedSpecializationIndex ?? 0,
            );
          },
          specializationSelected: (index) {
            var homeCubit = context.read<HomeCubit>();
            return SetupSuccess(
              specializationList: homeCubit.allSpecializations,
              selectedIndex: index,
            );
          },
          specializationError: (error) => SetupError(error: error),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}

class SetupError extends StatelessWidget {
  final String error;
  const SetupError({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: TextStyle(color: Colors.red, fontSize: 16.sp),
      ),
    );
  }
}

class SetupSuccess extends StatelessWidget {
  const SetupSuccess({
    super.key,
    required this.specializationList,
    required this.selectedIndex,
  });

  final List<SpecializationsData> specializationList;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<DoctorModel> filteredDoctors = [];
    if (specializationList.isNotEmpty &&
        selectedIndex < specializationList.length) {
      filteredDoctors = specializationList[selectedIndex].doctors;
    }

    return Column(
      children: [
        DoctorSpecialitySeeAll(title: 'Doctor Speciality'),
        16.verticalSpace,
        DoctorSpecialityHorizontalListView(
          specializationDataList: specializationList,
          selectedIndex: selectedIndex,
        ),
        DoctorsVerticalListView(doctors: filteredDoctors),
      ],
    );
  }
}

class SetupLoading extends StatelessWidget {
  const SetupLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DoctorSpecialityListViewShimmer(),
        DoctorsVerticalListViewShimmer(),
      ],
    );
  }
}
