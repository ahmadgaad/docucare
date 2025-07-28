import 'package:docdoc/features/home/presentation/components/doctors_list/doctors_vertical_list_view.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:docdoc/features/home/presentation/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return DoctorsVerticalListView(doctors: doctorsList);
          },
          doctorsError: (error) {
            return SizedBox.shrink();
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
