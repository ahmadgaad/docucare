import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/features/home/presentation/components/home_top_bar.dart';
import 'package:docdoc/features/home/presentation/components/nearby_doctor_card.dart';
import 'package:docdoc/features/home/presentation/components/specializations_and_doctors_bloc_builder.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:docdoc/shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? get name {
    final user = sl<SharedPrefService>().getString(SharedPrefKeys.userName);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCubit>(),

      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  HomeTopBar(name: name),
                  34.verticalSpace,
                  NearbyDoctorCard(),
                  24.verticalSpace,
                  SpecializationsAndDoctorsBlocBuilder(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
