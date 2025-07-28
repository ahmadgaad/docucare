import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/components/doctors_list/doctors_vertical_list_view_shimmer.dart';
import 'package:docdoc/features/home/presentation/components/speciality_see_all_button.dart';
import 'package:docdoc/features/home/presentation/components/specializations_list/speciality_horizontal_list_view.dart';
import 'package:docdoc/features/home/presentation/components/specializations_list/speciality_horizontal_list_view_shimmer.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:docdoc/features/home/presentation/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationError ||
          current is SpecializationSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => SetupLoading(),
          specializationSuccess: (specializationsResponseModel) {
            var specializationList =
                specializationsResponseModel.specializationsDataList;
            return SetupSuccess(specializationList: specializationList);
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
  const SetupSuccess({super.key, required this.specializationList});

  final List<SpecializationsData> specializationList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpecialitySeeAll(title: 'Doctor Speciality'),
        16.verticalSpace,
        SpecialityHorizontalListView(
          specializationDataList: specializationList,
        ),
      ],
    );
  }
}

class SetupLoading extends StatelessWidget {
  const SetupLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SpecialityListViewShimmer(), DoctorsVerticalListViewShimmer()],
    );
  }
}
